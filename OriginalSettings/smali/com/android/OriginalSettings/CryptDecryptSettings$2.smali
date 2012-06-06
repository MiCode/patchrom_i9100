.class Lcom/android/OriginalSettings/CryptDecryptSettings$2;
.super Ljava/lang/Object;
.source "CryptDecryptSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/CryptDecryptSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/CryptDecryptSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/CryptDecryptSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/OriginalSettings/CryptDecryptSettings$2;->this$0:Lcom/android/OriginalSettings/CryptDecryptSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/OriginalSettings/CryptDecryptSettings$2;->this$0:Lcom/android/OriginalSettings/CryptDecryptSettings;

    const/16 v1, 0x37

    #calls: Lcom/android/OriginalSettings/CryptDecryptSettings;->runKeyguardConfirmation(I)Z
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/CryptDecryptSettings;->access$300(Lcom/android/OriginalSettings/CryptDecryptSettings;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/OriginalSettings/CryptDecryptSettings$2;->this$0:Lcom/android/OriginalSettings/CryptDecryptSettings;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/CryptDecryptSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b01ab

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b01ac

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 112
    :cond_0
    return-void
.end method
