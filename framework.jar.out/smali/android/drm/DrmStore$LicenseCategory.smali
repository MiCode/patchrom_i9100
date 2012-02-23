.class public Landroid/drm/DrmStore$LicenseCategory;
.super Ljava/lang/Object;
.source "DrmStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/DrmStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LicenseCategory"
.end annotation


# static fields
.field public static final DRM2_ACCUMULATED:I = 0x10

.field public static final DRM2_COUNT:I = 0x1

.field public static final DRM2_DATETIME:I = 0x2

.field public static final DRM2_INDIVIDUAL:I = 0x20

.field public static final DRM2_INTERVAL:I = 0x4

.field public static final DRM2_NOT_FOUND:I = -0x1

.field public static final DRM2_SYSTEM:I = 0x40

.field public static final DRM2_TIMED_COUNT:I = 0x8

.field public static final DRM2_UNLIMITED:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 281
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
