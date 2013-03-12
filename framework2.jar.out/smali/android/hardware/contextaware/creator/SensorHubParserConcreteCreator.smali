.class public Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator;
.super Ljava/lang/Object;
.source "SensorHubParserConcreteCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator$1;,
        Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator$SensorHubNonLibParserList;
    }
.end annotation


# static fields
.field private static mPowerNotiObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiParser;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 102
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator;->mContext:Landroid/content/Context;

    .line 104
    invoke-virtual {p0}, Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator;->create()V

    .line 105
    return-void
.end method

.method static synthetic access$100()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiParser;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator;->mPowerNotiObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiParser;

    return-object v0
.end method

.method static synthetic access$102(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiParser;)Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiParser;
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    sput-object p0, Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator;->mPowerNotiObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiParser;

    return-object p0
.end method


# virtual methods
.method protected create()V
    .locals 6

    .prologue
    .line 111
    invoke-static {}, Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator$SensorHubNonLibParserList;->values()[Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator$SensorHubNonLibParserList;

    move-result-object v0

    .local v0, arr$:[Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator$SensorHubNonLibParserList;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 112
    .local v1, i:Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator$SensorHubNonLibParserList;
    invoke-virtual {v1}, Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator$SensorHubNonLibParserList;->createObj()V

    .line 111
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    .end local v1           #i:Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator$SensorHubNonLibParserList;
    :cond_0
    invoke-static {}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->getInstance()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->initialize(Landroid/content/Context;)V

    .line 115
    return-void
.end method

.method public getPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator;->mPowerNotiObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiParser;

    return-object v0
.end method
