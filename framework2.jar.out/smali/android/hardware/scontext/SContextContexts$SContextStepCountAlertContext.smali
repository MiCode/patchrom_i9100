.class public Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;
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
    name = "SContextStepCountAlertContext"
.end annotation


# instance fields
.field protected mAlert:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;->mAlert:I

    .line 56
    return-void
.end method
