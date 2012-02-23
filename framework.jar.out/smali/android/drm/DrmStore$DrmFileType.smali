.class public Landroid/drm/DrmStore$DrmFileType;
.super Ljava/lang/Object;
.source "DrmStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/DrmStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrmFileType"
.end annotation


# static fields
.field public static final DRM2_TYPE_CD:I = 0x1

.field public static final DRM2_TYPE_FL:I = 0x0

.field public static final DRM2_TYPE_SD:I = 0x3

.field public static final DRM2_TYPE_SSD:I = 0x2

.field public static final DRM2_TYPE_UNDEFINE:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
