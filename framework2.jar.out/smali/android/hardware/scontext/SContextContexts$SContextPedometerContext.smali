.class public Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;
.super Ljava/lang/Object;
.source "SContextContexts.java"

# interfaces
.implements Landroid/hardware/scontext/ISContextContexts;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/SContextContexts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SContextPedometerContext"
.end annotation


# instance fields
.field protected mCalorie:D

.field protected mDistance:D

.field protected mSpeed:D

.field protected mStepCount:J

.field protected mStepStatus:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->mStepCount:J

    .line 43
    iput-wide v2, p0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->mCalorie:D

    .line 44
    iput-wide v2, p0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->mDistance:D

    .line 45
    iput-wide v2, p0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->mSpeed:D

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->mStepStatus:I

    .line 47
    return-void
.end method
