.class public abstract Landroid/media/effect/Effect;
.super Ljava/lang/Object;
.source "Effect.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract apply(IIII)V
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract release()V
.end method

.method public abstract setParameter(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public setUpdateListener(Landroid/media/effect/EffectUpdateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 97
    return-void
.end method
