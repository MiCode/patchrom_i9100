.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/GestureApproachRunner$GestureApproachContext;
.super Ljava/lang/Object;
.source "GestureApproachRunner.java"

# interfaces
.implements Landroid/hardware/contextaware/IContextBundle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/dataprovider/sensorhubprovider/GestureApproachRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GestureApproachContext"
.end annotation


# instance fields
.field public proximity:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/GestureApproachRunner$GestureApproachContext;->proximity:I

    .line 60
    return-void
.end method
