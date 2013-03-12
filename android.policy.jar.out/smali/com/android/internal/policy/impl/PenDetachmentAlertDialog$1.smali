.class Lcom/android/internal/policy/impl/PenDetachmentAlertDialog$1;
.super Ljava/lang/Object;
.source "PenDetachmentAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog$1;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 58
    invoke-static {}, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$PenSettingsMenuActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 61
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 62
    iget-object v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog$1;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;

    #getter for: Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->access$100(Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 66
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.PenMissingAlertDialog.DISMISSED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .local v1, mIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog$1;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;

    #getter for: Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->access$100(Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 69
    return-void
.end method
