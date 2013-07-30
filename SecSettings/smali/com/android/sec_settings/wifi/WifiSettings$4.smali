.class Lcom/android/sec_settings/wifi/WifiSettings$4;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/wifi/WifiSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/wifi/WifiSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 507
    iput-object p1, p0, Lcom/android/sec_settings/wifi/WifiSettings$4;->this$0:Lcom/android/sec_settings/wifi/WifiSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 512
    invoke-static {}, Lcom/android/sec_settings/wifi/WifiSettings;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiSettings"

    const-string v1, "ActionListener::onFailure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings$4;->this$0:Lcom/android/sec_settings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0902ae

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 516
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 509
    invoke-static {}, Lcom/android/sec_settings/wifi/WifiSettings;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiSettings"

    const-string v1, "ActionListener::onSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_0
    return-void
.end method
