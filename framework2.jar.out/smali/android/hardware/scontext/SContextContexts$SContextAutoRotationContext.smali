.class public Landroid/hardware/scontext/SContextContexts$SContextAutoRotationContext;
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
    name = "SContextAutoRotationContext"
.end annotation


# instance fields
.field protected mAngle:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/scontext/SContextContexts$SContextAutoRotationContext;->mAngle:I

    .line 83
    return-void
.end method
