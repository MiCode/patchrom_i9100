.class public Landroid/media/effect/effects/CropEffect;
.super Landroid/media/effect/SizeChangeEffect;
.source "CropEffect.java"


# direct methods
.method public constructor <init>(Landroid/media/effect/EffectContext;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "name"

    .prologue
    .line 31
    const-class v3, Landroid/filterpacks/imageproc/CropRectFilter;

    const-string v4, "image"

    const-string v5, "image"

    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/Object;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/media/effect/SizeChangeEffect;-><init>(Landroid/media/effect/EffectContext;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    return-void
.end method
