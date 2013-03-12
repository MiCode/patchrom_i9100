.class Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;
.super Landroid/os/Handler;
.source "DirEncryptService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DirEncryptService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DirEncryptServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DirEncryptService;


# direct methods
.method public constructor <init>(Lcom/android/server/DirEncryptService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "l"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;->this$0:Lcom/android/server/DirEncryptService;

    .line 121
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 122
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;->this$0:Lcom/android/server/DirEncryptService;

    #getter for: Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;
    invoke-static {v0}, Lcom/android/server/DirEncryptService;->access$000(Lcom/android/server/DirEncryptService;)Lcom/android/server/DirEncryptServiceHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/DirEncryptServiceHelper;->doHandleMessage(Landroid/os/Message;)V

    .line 126
    return-void
.end method
