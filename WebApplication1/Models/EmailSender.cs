using System;
using MailKit.Net.Smtp;
using MailKit.Security;
using MimeKit;

public class EmailSender
{
    public async Task SendEmail(string to, string subject, string body)
    {
        try
        {
            // Создаем объект сообщения
            var message = new MimeMessage();
            message.From.Add(new MailboxAddress("Dania Varlamov", "dania.varlamow@yandex.ru")); // Ваш email
            message.To.Add(new MailboxAddress("", to));
            message.Subject = subject;

            // Текст письма
            var bodyBuilder = new BodyBuilder();
            bodyBuilder.TextBody = body;
            message.Body = bodyBuilder.ToMessageBody();

            // Настройка SMTP клиента
            using (var client = new SmtpClient())
            {
                await client.ConnectAsync("smtp.yandex.ru", 25, false); // Укажите адрес SMTP сервера и порт
                await client.AuthenticateAsync("dania.varlamow@yandex.ru", "hdwdstepqwxxutjl"); // Ваш email и пароль
                await client.SendAsync(message);
                await client.DisconnectAsync(true);
            }

            Console.WriteLine("Email Sent");
        }
        catch (Exception ex)
        {
            Console.WriteLine("Exception caught in SendEmail(): {0}", ex.ToString());
        }
    }
}