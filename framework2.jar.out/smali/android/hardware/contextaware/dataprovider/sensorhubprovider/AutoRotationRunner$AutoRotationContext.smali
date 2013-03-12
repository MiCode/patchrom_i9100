.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/AutoRotationRunner$AutoRotationContext;
.super Ljava/lang/Object;
.source "AutoRotationRunner.java"

# interfaces
.implements Landroid/hardware/contextaware/IContextBundle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/dataprovider/sensorhubprovider/AutoRotationRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoRotationContext"
.end annotation


# instance fields
.field public angle:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/AutoRotationRunner$AutoRotationContext;->angle:I

    .line 68
    return-void
.end method
