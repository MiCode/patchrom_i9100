.class public Landroid/drm/DrmStore$Playready_LicenseCategory;
.super Ljava/lang/Object;
.source "DrmStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/DrmStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Playready_LicenseCategory"
.end annotation


# static fields
.field public static final DRM_LICENSE_STATE_COUNT:I = 0x2

.field public static final DRM_LICENSE_STATE_COUNT_FROM:I = 0x6

.field public static final DRM_LICENSE_STATE_COUNT_FROM_UNTIL:I = 0x8

.field public static final DRM_LICENSE_STATE_COUNT_UNTIL:I = 0x7

.field public static final DRM_LICENSE_STATE_EXPIRATION_AFTER_FIRSTUSE:I = 0x9

.field public static final DRM_LICENSE_STATE_FORCE_SYNC:I = 0xa

.field public static final DRM_LICENSE_STATE_FROM:I = 0x3

.field public static final DRM_LICENSE_STATE_FROM_UNTIL:I = 0x5

.field public static final DRM_LICENSE_STATE_NORIGHT:I = 0x0

.field public static final DRM_LICENSE_STATE_UNLIM:I = 0x1

.field public static final DRM_LICENSE_STATE_UNTIL:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 298
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
