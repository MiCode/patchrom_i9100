.class public final Lcom/android/server/DirEncryptServiceHelper$Command;
.super Ljava/lang/Object;
.source "DirEncryptServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DirEncryptServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Command"
.end annotation


# static fields
.field public static final BATCH_DECRYPT:I = 0x6

.field public static final BATCH_DECRYPT_POPUP:I = 0x7

.field private static final COMMAND_BASE:I = 0x0

.field public static final ENCRYPT:I = 0x4

.field public static final ENC_META_CHECK:I = 0x5

.field public static final PASSWORD:I = 0x1

.field public static final UMOUNT_SD:I = 0x2

.field public static final USB_STATE:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 238
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
