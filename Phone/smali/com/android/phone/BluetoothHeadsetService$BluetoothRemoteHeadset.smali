.class Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
.super Ljava/lang/Object;
.source "BluetoothHeadsetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHeadsetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothRemoteHeadset"
.end annotation


# instance fields
.field private mAudioState:I

.field private mHeadset:Landroid/bluetooth/HeadsetBase;

.field private mHeadsetType:I

.field private mIncomingInfo:Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;

.field private mState:I

.field final synthetic this$0:Lcom/android/phone/BluetoothHeadsetService;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHeadsetService;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 108
    iput-object p1, p0, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput v0, p0, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I

    .line 110
    iput v0, p0, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mHeadsetType:I

    .line 111
    iput-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mHeadset:Landroid/bluetooth/HeadsetBase;

    .line 112
    iput-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mIncomingInfo:Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;

    .line 113
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mAudioState:I

    .line 114
    return-void
.end method

.method constructor <init>(Lcom/android/phone/BluetoothHeadsetService;ILandroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;)V
    .locals 1
    .parameter
    .parameter "headsetType"
    .parameter "incomingInfo"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I

    .line 118
    iput p2, p0, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mHeadsetType:I

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mHeadset:Landroid/bluetooth/HeadsetBase;

    .line 120
    iput-object p3, p0, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mIncomingInfo:Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;

    .line 121
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mAudioState:I

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput p1, p0, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I

    return p1
.end method

.method static synthetic access$2200(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)Landroid/bluetooth/HeadsetBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mHeadset:Landroid/bluetooth/HeadsetBase;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;Landroid/bluetooth/HeadsetBase;)Landroid/bluetooth/HeadsetBase;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mHeadset:Landroid/bluetooth/HeadsetBase;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mAudioState:I

    return v0
.end method

.method static synthetic access$2402(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput p1, p0, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mAudioState:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mHeadsetType:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput p1, p0, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mHeadsetType:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mIncomingInfo:Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;)Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mIncomingInfo:Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;

    return-object p1
.end method
