.class Lcom/android/OriginalSettings/CryptDecryptConfirm$1;
.super Ljava/lang/Object;
.source "CryptDecryptConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/CryptDecryptConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/CryptDecryptConfirm;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/CryptDecryptConfirm;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/OriginalSettings/CryptDecryptConfirm$1;->this$0:Lcom/android/OriginalSettings/CryptDecryptConfirm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 85
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    :goto_0
    return-void

    .line 89
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/OriginalSettings/CryptDecryptConfirm$1;->this$0:Lcom/android/OriginalSettings/CryptDecryptConfirm;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/CryptDecryptConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/OriginalSettings/CryptDecryptConfirm$Blank;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/OriginalSettings/CryptDecryptConfirm$1;->this$0:Lcom/android/OriginalSettings/CryptDecryptConfirm;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/CryptDecryptConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 92
    iget-object v1, p0, Lcom/android/OriginalSettings/CryptDecryptConfirm$1;->this$0:Lcom/android/OriginalSettings/CryptDecryptConfirm;

    invoke-virtual {v1, v0}, Lcom/android/OriginalSettings/CryptDecryptConfirm;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
