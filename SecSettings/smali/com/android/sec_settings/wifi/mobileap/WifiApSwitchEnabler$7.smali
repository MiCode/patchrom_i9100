.class Lcom/android/sec_settings/wifi/mobileap/WifiApSwitchEnabler$7;
.super Ljava/lang/Object;
.source "WifiApSwitchEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/wifi/mobileap/WifiApSwitchEnabler;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 402
    iput-object p1, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApSwitchEnabler$7;->this$0:Lcom/android/sec_settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApSwitchEnabler$7;->this$0:Lcom/android/sec_settings/wifi/mobileap/WifiApSwitchEnabler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    .line 405
    iget-object v0, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApSwitchEnabler$7;->this$0:Lcom/android/sec_settings/wifi/mobileap/WifiApSwitchEnabler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 406
    return-void
.end method
