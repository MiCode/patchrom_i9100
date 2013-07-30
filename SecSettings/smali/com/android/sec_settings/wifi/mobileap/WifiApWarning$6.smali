.class Lcom/android/sec_settings/wifi/mobileap/WifiApWarning$6;
.super Ljava/lang/Object;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/wifi/mobileap/WifiApWarning;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/wifi/mobileap/WifiApWarning;

.field final synthetic val$av:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/wifi/mobileap/WifiApWarning;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/sec_settings/wifi/mobileap/WifiApWarning;

    iput-object p2, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWarning$6;->val$av:Landroid/app/Activity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWarning$6;->val$av:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/sec_settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWarning$6;->val$av:Landroid/app/Activity;

    invoke-static {p1, p2, v0}, Lcom/android/sec_settings/guide/GuideFragment;->onApDisableClick(Landroid/content/DialogInterface;ILandroid/app/Activity;)V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/sec_settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/mobileap/WifiApWarning;->finish()V

    .line 162
    return-void
.end method
