.class Lcom/android/sec_settings/bluetooth/BluetoothSettings$2;
.super Landroid/preference/Preference;
.source "BluetoothSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/bluetooth/BluetoothSettings;->updateContent(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/bluetooth/BluetoothSettings;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/bluetooth/BluetoothSettings;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 584
    iput-object p1, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings$2;->this$0:Lcom/android/sec_settings/bluetooth/BluetoothSettings;

    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 587
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 588
    const v1, 0x7f0b027b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 589
    .local v0, layoutView:Landroid/widget/LinearLayout;
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 591
    iget-object v2, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings$2;->this$0:Lcom/android/sec_settings/bluetooth/BluetoothSettings;

    const v1, 0x7f0b027c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    #setter for: Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mButtonView:Landroid/widget/TextView;
    invoke-static {v2, v1}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->access$202(Lcom/android/sec_settings/bluetooth/BluetoothSettings;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 592
    iget-object v1, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings$2;->this$0:Lcom/android/sec_settings/bluetooth/BluetoothSettings;

    iget-object v1, v1, Lcom/android/sec_settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 593
    iget-object v1, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings$2;->this$0:Lcom/android/sec_settings/bluetooth/BluetoothSettings;

    #getter for: Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mButtonView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->access$200(Lcom/android/sec_settings/bluetooth/BluetoothSettings;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f09061e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 596
    :goto_0
    return-void

    .line 595
    :cond_0
    iget-object v1, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings$2;->this$0:Lcom/android/sec_settings/bluetooth/BluetoothSettings;

    #getter for: Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mButtonView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->access$200(Lcom/android/sec_settings/bluetooth/BluetoothSettings;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f09009e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
