.class Lcom/android/settings/TetherSettings$5;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TetherSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/TetherSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 444
    iput-object p1, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v2, 0x0

    .line 448
    iget-object v0, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    #getter for: Lcom/android/settings/TetherSettings;->mTetherChoice:I
    invoke-static {v0}, Lcom/android/settings/TetherSettings;->access$300(Lcom/android/settings/TetherSettings;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 456
    iget-object v0, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    #getter for: Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;
    invoke-static {v0}, Lcom/android/settings/TetherSettings;->access$500(Lcom/android/settings/TetherSettings;)Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    #getter for: Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;
    invoke-static {v0}, Lcom/android/settings/TetherSettings;->access$500(Lcom/android/settings/TetherSettings;)Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    .line 458
    iget-object v0, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    #getter for: Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;
    invoke-static {v0}, Lcom/android/settings/TetherSettings;->access$500(Lcom/android/settings/TetherSettings;)Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 461
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    const/4 v1, -0x1

    #setter for: Lcom/android/settings/TetherSettings;->mTetherChoice:I
    invoke-static {v0, v1}, Lcom/android/settings/TetherSettings;->access$302(Lcom/android/settings/TetherSettings;I)I

    .line 462
    return-void

    .line 450
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    #getter for: Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/TetherSettings;->access$400(Lcom/android/settings/TetherSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 453
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    #getter for: Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/TetherSettings;->access$100(Lcom/android/settings/TetherSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 448
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
