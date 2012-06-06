.class final Lcom/android/OriginalSettings/bluetooth/A2dpProfile$A2dpServiceListener;
.super Ljava/lang/Object;
.source "A2dpProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/bluetooth/A2dpProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "A2dpServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/bluetooth/A2dpProfile;


# direct methods
.method private constructor <init>(Lcom/android/OriginalSettings/bluetooth/A2dpProfile;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/OriginalSettings/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lcom/android/OriginalSettings/bluetooth/A2dpProfile;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/OriginalSettings/bluetooth/A2dpProfile;Lcom/android/OriginalSettings/bluetooth/A2dpProfile$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/bluetooth/A2dpProfile$A2dpServiceListener;-><init>(Lcom/android/OriginalSettings/bluetooth/A2dpProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lcom/android/OriginalSettings/bluetooth/A2dpProfile;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    .end local p2
    #setter for: Lcom/android/OriginalSettings/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v0, p2}, Lcom/android/OriginalSettings/bluetooth/A2dpProfile;->access$002(Lcom/android/OriginalSettings/bluetooth/A2dpProfile;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 55
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lcom/android/OriginalSettings/bluetooth/A2dpProfile;

    const/4 v1, 0x0

    #setter for: Lcom/android/OriginalSettings/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/bluetooth/A2dpProfile;->access$002(Lcom/android/OriginalSettings/bluetooth/A2dpProfile;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 59
    return-void
.end method
