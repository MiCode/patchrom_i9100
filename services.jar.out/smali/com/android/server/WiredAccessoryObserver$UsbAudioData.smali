.class final Lcom/android/server/WiredAccessoryObserver$UsbAudioData;
.super Ljava/lang/Object;
.source "WiredAccessoryObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WiredAccessoryObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UsbAudioData"
.end annotation


# instance fields
.field private cardNumber:Ljava/lang/String;

.field private channels:Ljava/lang/String;

.field private deviceNumber:Ljava/lang/String;

.field private state:I

.field final synthetic this$0:Lcom/android/server/WiredAccessoryObserver;


# direct methods
.method private constructor <init>(Lcom/android/server/WiredAccessoryObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/server/WiredAccessoryObserver$UsbAudioData;->this$0:Lcom/android/server/WiredAccessoryObserver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/WiredAccessoryObserver;Lcom/android/server/WiredAccessoryObserver$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lcom/android/server/WiredAccessoryObserver$UsbAudioData;-><init>(Lcom/android/server/WiredAccessoryObserver;)V

    return-void
.end method


# virtual methods
.method public getCardNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/server/WiredAccessoryObserver$UsbAudioData;->cardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getChannels()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/server/WiredAccessoryObserver$UsbAudioData;->channels:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/server/WiredAccessoryObserver$UsbAudioData;->deviceNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/android/server/WiredAccessoryObserver$UsbAudioData;->state:I

    return v0
.end method

.method public setUsbAudioData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "state"
    .parameter "channels"
    .parameter "cardNumber"
    .parameter "deviceNumber"

    .prologue
    .line 188
    iput p1, p0, Lcom/android/server/WiredAccessoryObserver$UsbAudioData;->state:I

    .line 189
    iput-object p2, p0, Lcom/android/server/WiredAccessoryObserver$UsbAudioData;->channels:Ljava/lang/String;

    .line 190
    iput-object p3, p0, Lcom/android/server/WiredAccessoryObserver$UsbAudioData;->cardNumber:Ljava/lang/String;

    .line 191
    iput-object p4, p0, Lcom/android/server/WiredAccessoryObserver$UsbAudioData;->deviceNumber:Ljava/lang/String;

    .line 192
    return-void
.end method
