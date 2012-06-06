.class final Lcom/android/OriginalSettings/bluetooth/PanProfile$PanServiceListener;
.super Ljava/lang/Object;
.source "PanProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/bluetooth/PanProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PanServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/bluetooth/PanProfile;


# direct methods
.method private constructor <init>(Lcom/android/OriginalSettings/bluetooth/PanProfile;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/OriginalSettings/bluetooth/PanProfile$PanServiceListener;->this$0:Lcom/android/OriginalSettings/bluetooth/PanProfile;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/OriginalSettings/bluetooth/PanProfile;Lcom/android/OriginalSettings/bluetooth/PanProfile$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/bluetooth/PanProfile$PanServiceListener;-><init>(Lcom/android/OriginalSettings/bluetooth/PanProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/PanProfile$PanServiceListener;->this$0:Lcom/android/OriginalSettings/bluetooth/PanProfile;

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    .end local p2
    #setter for: Lcom/android/OriginalSettings/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;
    invoke-static {v0, p2}, Lcom/android/OriginalSettings/bluetooth/PanProfile;->access$002(Lcom/android/OriginalSettings/bluetooth/PanProfile;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    .line 52
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/PanProfile$PanServiceListener;->this$0:Lcom/android/OriginalSettings/bluetooth/PanProfile;

    const/4 v1, 0x0

    #setter for: Lcom/android/OriginalSettings/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/bluetooth/PanProfile;->access$002(Lcom/android/OriginalSettings/bluetooth/PanProfile;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    .line 56
    return-void
.end method
