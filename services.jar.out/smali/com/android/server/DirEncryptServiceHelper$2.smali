.class Lcom/android/server/DirEncryptServiceHelper$2;
.super Ljava/lang/Object;
.source "DirEncryptServiceHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DirEncryptServiceHelper;->showPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DirEncryptServiceHelper;


# direct methods
.method constructor <init>(Lcom/android/server/DirEncryptServiceHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper$2;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 178
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 179
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper$2;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    const/16 v1, 0xc

    const-string v2, "batch_no_fs"

    #calls: Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->access$300(Lcom/android/server/DirEncryptServiceHelper;ILjava/lang/String;)V

    .line 180
    return-void
.end method
