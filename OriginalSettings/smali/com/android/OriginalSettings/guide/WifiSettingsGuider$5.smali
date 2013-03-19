.class Lcom/android/settings/guide/WifiSettingsGuider$5;
.super Ljava/lang/Object;
.source "WifiSettingsGuider.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/guide/WifiSettingsGuider;->initHelpDialogContent(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/guide/WifiSettingsGuider;


# direct methods
.method constructor <init>(Lcom/android/settings/guide/WifiSettingsGuider;)V
    .locals 0
    .parameter

    .prologue
    .line 471
    iput-object p1, p0, Lcom/android/settings/guide/WifiSettingsGuider$5;->this$0:Lcom/android/settings/guide/WifiSettingsGuider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider$5;->this$0:Lcom/android/settings/guide/WifiSettingsGuider;

    #getter for: Lcom/android/settings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;
    invoke-static {v0}, Lcom/android/settings/guide/WifiSettingsGuider;->access$200(Lcom/android/settings/guide/WifiSettingsGuider;)Lcom/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider$5;->this$0:Lcom/android/settings/guide/WifiSettingsGuider;

    #getter for: Lcom/android/settings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;
    invoke-static {v0}, Lcom/android/settings/guide/WifiSettingsGuider;->access$200(Lcom/android/settings/guide/WifiSettingsGuider;)Lcom/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;->OnCloseHelpDialog()V

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider$5;->this$0:Lcom/android/settings/guide/WifiSettingsGuider;

    invoke-virtual {v0}, Lcom/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog()V

    .line 478
    return-void
.end method
