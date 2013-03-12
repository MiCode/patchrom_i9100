.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;
.super Ljava/lang/Object;
.source "PedometerRunner.java"

# interfaces
.implements Landroid/hardware/contextaware/IContextBundle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PedometerContext"
.end annotation


# instance fields
.field public calorie:D

.field public distance:D

.field public speed:D

.field public stepCount:J

.field public stepStatus:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;->stepCount:J

    .line 86
    iput-wide v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;->distance:D

    .line 87
    iput-wide v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;->calorie:D

    .line 88
    iput-wide v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;->speed:D

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;->stepStatus:I

    .line 90
    return-void
.end method
