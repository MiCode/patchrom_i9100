.class public Lcom/android/settings/nearby/AccessDeviceList$DeviceInfo;
.super Ljava/lang/Object;
.source "AccessDeviceList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nearby/AccessDeviceList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeviceInfo"
.end annotation


# instance fields
.field private mIp:Ljava/lang/String;

.field private mMac:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPort:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/nearby/AccessDeviceList;


# direct methods
.method public constructor <init>(Lcom/android/settings/nearby/AccessDeviceList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "mac"
    .parameter "ip"
    .parameter "name"
    .parameter "port"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/settings/nearby/AccessDeviceList$DeviceInfo;->this$0:Lcom/android/settings/nearby/AccessDeviceList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/nearby/AccessDeviceList$DeviceInfo;->mMac:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/nearby/AccessDeviceList$DeviceInfo;->mName:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/nearby/AccessDeviceList$DeviceInfo;->mIp:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/nearby/AccessDeviceList$DeviceInfo;->mPort:Ljava/lang/String;

    .line 27
    invoke-virtual {p0, p2}, Lcom/android/settings/nearby/AccessDeviceList$DeviceInfo;->setMac(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, p4}, Lcom/android/settings/nearby/AccessDeviceList$DeviceInfo;->setName(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0, p3}, Lcom/android/settings/nearby/AccessDeviceList$DeviceInfo;->setIp(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0, p5}, Lcom/android/settings/nearby/AccessDeviceList$DeviceInfo;->setPort(Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/nearby/AccessDeviceList$DeviceInfo;->mMac:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/nearby/AccessDeviceList$DeviceInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0
    .parameter "mIp"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/settings/nearby/AccessDeviceList$DeviceInfo;->mIp:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0
    .parameter "mMac"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/settings/nearby/AccessDeviceList$DeviceInfo;->mMac:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "mName"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/settings/nearby/AccessDeviceList$DeviceInfo;->mName:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setPort(Ljava/lang/String;)V
    .locals 0
    .parameter "mPort"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/settings/nearby/AccessDeviceList$DeviceInfo;->mPort:Ljava/lang/String;

    .line 63
    return-void
.end method
