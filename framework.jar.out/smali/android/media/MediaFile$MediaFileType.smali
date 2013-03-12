.class public Landroid/media/MediaFile$MediaFileType;
.super Ljava/lang/Object;
.source "MediaFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaFileType"
.end annotation


# instance fields
.field public final fileType:I

.field public final mimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "fileType"
    .parameter "mimeType"

    .prologue
    .line 210
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput p1, p0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    .line 212
    iput-object p2, p0, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    .line 213
    return-void
.end method
