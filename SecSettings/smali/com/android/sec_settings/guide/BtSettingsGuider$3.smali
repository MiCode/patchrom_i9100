.class Lcom/android/sec_settings/guide/BtSettingsGuider$3;
.super Ljava/lang/Object;
.source "BtSettingsGuider.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/guide/BtSettingsGuider;->initHelpDialogContent(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/guide/BtSettingsGuider;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/guide/BtSettingsGuider;)V
    .locals 0
    .parameter

    .prologue
    .line 416
    iput-object p1, p0, Lcom/android/sec_settings/guide/BtSettingsGuider$3;->this$0:Lcom/android/sec_settings/guide/BtSettingsGuider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/sec_settings/guide/BtSettingsGuider$3;->this$0:Lcom/android/sec_settings/guide/BtSettingsGuider;

    #getter for: Lcom/android/sec_settings/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/android/sec_settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;
    invoke-static {v0}, Lcom/android/sec_settings/guide/BtSettingsGuider;->access$100(Lcom/android/sec_settings/guide/BtSettingsGuider;)Lcom/android/sec_settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/android/sec_settings/guide/BtSettingsGuider$3;->this$0:Lcom/android/sec_settings/guide/BtSettingsGuider;

    #getter for: Lcom/android/sec_settings/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/android/sec_settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;
    invoke-static {v0}, Lcom/android/sec_settings/guide/BtSettingsGuider;->access$100(Lcom/android/sec_settings/guide/BtSettingsGuider;)Lcom/android/sec_settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/sec_settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;->OnCloseHelpDialog()V

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/android/sec_settings/guide/BtSettingsGuider$3;->this$0:Lcom/android/sec_settings/guide/BtSettingsGuider;

    invoke-virtual {v0}, Lcom/android/sec_settings/guide/BtSettingsGuider;->dismissHelpDialog()V

    .line 423
    return-void
.end method
