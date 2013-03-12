.class public Landroid/hardware/scontext/SContextContexts$SContextMovementContext;
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
    name = "SContextMovementContext"
.end annotation


# instance fields
.field protected mAction:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextContexts$SContextMovementContext;->mAction:I

    .line 74
    return-void
.end method
