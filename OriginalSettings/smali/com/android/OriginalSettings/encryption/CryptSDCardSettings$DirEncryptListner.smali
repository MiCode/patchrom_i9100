.class Lcom/android/OriginalSettings/encryption/CryptSDCardSettings$DirEncryptListner;
.super Landroid/os/storage/IDirEncryptServiceListener$Stub;
.source "CryptSDCardSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/encryption/CryptSDCardSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DirEncryptListner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/encryption/CryptSDCardSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/encryption/CryptSDCardSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/OriginalSettings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/OriginalSettings/encryption/CryptSDCardSettings;

    invoke-direct {p0}, Landroid/os/storage/IDirEncryptServiceListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onEncryptionStatusChanged(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter "path"
    .parameter "operation"
    .parameter "status"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/OriginalSettings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/OriginalSettings/encryption/CryptSDCardSettings;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEncryptionStatusChanged: operation = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/OriginalSettings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/encryption/CryptSDCardSettings;->access$000(Lcom/android/OriginalSettings/encryption/CryptSDCardSettings;Ljava/lang/String;)V

    .line 88
    const-string v0, "/mnt/sdcard/external_sd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const-string v0, "free"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/android/OriginalSettings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/OriginalSettings/encryption/CryptSDCardSettings;

    const-string v1, "status free"

    #calls: Lcom/android/OriginalSettings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/encryption/CryptSDCardSettings;->access$000(Lcom/android/OriginalSettings/encryption/CryptSDCardSettings;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/android/OriginalSettings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/OriginalSettings/encryption/CryptSDCardSettings;

    #getter for: Lcom/android/OriginalSettings/encryption/CryptSDCardSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/OriginalSettings/encryption/CryptSDCardSettings;->access$100(Lcom/android/OriginalSettings/encryption/CryptSDCardSettings;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    const-string v0, "busy"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/android/OriginalSettings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/OriginalSettings/encryption/CryptSDCardSettings;

    const-string v1, "status busy"

    #calls: Lcom/android/OriginalSettings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/encryption/CryptSDCardSettings;->access$000(Lcom/android/OriginalSettings/encryption/CryptSDCardSettings;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/android/OriginalSettings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/OriginalSettings/encryption/CryptSDCardSettings;

    #getter for: Lcom/android/OriginalSettings/encryption/CryptSDCardSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/OriginalSettings/encryption/CryptSDCardSettings;->access$100(Lcom/android/OriginalSettings/encryption/CryptSDCardSettings;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/OriginalSettings/encryption/CryptSDCardSettings;

    const-string v1, "ignore status"

    #calls: Lcom/android/OriginalSettings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/encryption/CryptSDCardSettings;->access$000(Lcom/android/OriginalSettings/encryption/CryptSDCardSettings;Ljava/lang/String;)V

    goto :goto_0
.end method
