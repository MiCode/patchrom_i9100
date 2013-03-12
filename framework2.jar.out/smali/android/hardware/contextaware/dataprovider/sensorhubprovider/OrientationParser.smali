.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/OrientationParser;
.super Ljava/lang/Object;
.source "OrientationParser.java"

# interfaces
.implements Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public display()V
    .locals 0

    .prologue
    .line 48
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CALogger;->trace()V

    .line 49
    return-void
.end method

.method public parse([BI)I
    .locals 1
    .parameter "packet"
    .parameter "next"

    .prologue
    .line 34
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CALogger;->trace()V

    .line 35
    const/4 v0, 0x0

    return v0
.end method
