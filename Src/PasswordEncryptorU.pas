unit PasswordEncryptorU;
{uses
var
  Encryptor: TPasswordEncryptor;
  Password, Salt, HashedPassword: string;
  IsValid: Boolean;
begin
  Encryptor := TPasswordEncryptor.Create;
  try
    Password := '';
    // Generate hashed password with a salt
    HashedPassword := Encryptor.HashPassword(Password, Salt);
    Writeln('Salt: ' + Salt);
    Writeln('Hashed Password: ' + HashedPassword);

    // Verify the password
    IsValid := Encryptor.VerifyPassword(Password, Salt, HashedPassword);
    if IsValid then
      Writeln('Password verification successful!')
    else
      Writeln('Password verification failed!');
  finally
    Encryptor.Free;
  end;
end;
}
interface

uses
  System.SysUtils, System.Hash, System.Classes,System.NetEncoding;

type
  TPasswordEncryptor = class
  private
    function GenerateSalt: string;
    function Base64Encode(const Bytes: TBytes): string;
  public
    function HashPassword(const Password: string; out Salt: string): string;
    function VerifyPassword(const Password, Salt, HashedPassword: string): Boolean;
  end;

implementation

const
  SALT_LENGTH = 16; // Length of the random salt string

{ TPasswordEncryptor }

function TPasswordEncryptor.GenerateSalt: string;
const
  Characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
var
  I: Integer;
begin
  Randomize;
  Result := '';
  for I := 1 to SALT_LENGTH do
    Result := Result + Characters[Random(Length(Characters)) + 1];
end;

function TPasswordEncryptor.Base64Encode(const Bytes: TBytes): string;
begin
  Result := TNetEncoding.Base64.EncodeBytesToString(Bytes);
end;

function TPasswordEncryptor.HashPassword(const Password: string; out Salt: string): string;
var
  SaltedPassword: string;
  HashBytes: TBytes;
begin
  Salt := GenerateSalt;
  SaltedPassword := Salt + Password;
  HashBytes := THashSHA2.GetHashBytes(SaltedPassword);
  Result := Base64Encode(HashBytes);
end;

function TPasswordEncryptor.VerifyPassword(const Password, Salt, HashedPassword: string): Boolean;
var
  SaltedPassword: string;
  HashBytes: TBytes;
begin
  SaltedPassword := Salt + Password;
  HashBytes := THashSHA2.GetHashBytes(SaltedPassword);
  Result := Base64Encode(HashBytes) = HashedPassword;
end;

end.

