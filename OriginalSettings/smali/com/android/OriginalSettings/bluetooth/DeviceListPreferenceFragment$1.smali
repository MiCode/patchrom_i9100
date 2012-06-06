.class Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment$1;
.super Ljava/lang/Object;
.source "DeviceListPreferenceFragment.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->onMotionScan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment$1;->this$0:Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 2
    .parameter "motionEvent"

    .prologue
    .line 159
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 165
    :goto_0
    return-void

    .line 161
    :pswitch_0
    const-string v0, "DeviceListPreferenceFragment"

    const-string v1, "Shake Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment$1;->this$0:Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;

    iget-object v0, v0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    goto :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_0
    .end packed-switch
.end method
