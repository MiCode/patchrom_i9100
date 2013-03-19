.class Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$4;
.super Landroid/os/CountDownTimer;
.source "WifiP2pDevicePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;JJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 386
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$4;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 390
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$4;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z
    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$500(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$4;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    #calls: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V
    invoke-static {v0, v2, v2}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$600(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;ZZ)V

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$4;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$4;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;
    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$2100(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/preference/PreferenceGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$4;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;
    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$2200(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/preference/PreferenceGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$4;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;
    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$300(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Lcom/android/settings/ProgressCategory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 396
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$4;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mNoDevicePref:Landroid/preference/PreferenceGroup;
    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$2300(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/preference/PreferenceGroup;

    move-result-object v0

    const v1, 0x7f04012c

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setLayoutResource(I)V

    .line 397
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$4;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$4;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mNoDevicePref:Landroid/preference/PreferenceGroup;
    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$2300(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/preference/PreferenceGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 401
    :cond_1
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .parameter "millisUntilFinished"

    .prologue
    .line 388
    return-void
.end method
