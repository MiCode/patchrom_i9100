.class Lcom/android/sec_settings/wifi/mobileap/WifiApSwitchEnabler$16;
.super Ljava/lang/Object;
.source "WifiApSwitchEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 503
    iput-object p1, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApSwitchEnabler$16;->this$0:Lcom/android/sec_settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApSwitchEnabler$16;->this$0:Lcom/android/sec_settings/wifi/mobileap/WifiApSwitchEnabler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    .line 506
    iget-object v0, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApSwitchEnabler$16;->this$0:Lcom/android/sec_settings/wifi/mobileap/WifiApSwitchEnabler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 507
    return-void
.end method
