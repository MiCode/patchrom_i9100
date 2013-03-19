.class Lcom/sec/android/app/camera/imageviewer/MediaList$2;
.super Ljava/lang/Object;
.source "MediaList.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/imageviewer/MediaList;->initialize(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/imageviewer/MediaList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/imageviewer/MediaList;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/sec/android/app/camera/imageviewer/MediaList$2;->this$0:Lcom/sec/android/app/camera/imageviewer/MediaList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;)I
    .locals 4
    .parameter "obj1"
    .parameter "obj2"

    .prologue
    .line 163
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 164
    iget-wide v0, p1, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->dataTaken:J

    iget-wide v2, p2, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->dataTaken:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 165
    const/4 v0, 0x1

    .line 169
    :goto_0
    return v0

    .line 166
    :cond_0
    iget-wide v0, p1, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->dataTaken:J

    iget-wide v2, p2, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->dataTaken:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 167
    const/4 v0, -0x1

    goto :goto_0

    .line 169
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 158
    check-cast p1, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;

    .end local p1
    check-cast p2, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/imageviewer/MediaList$2;->compare(Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;)I

    move-result v0

    return v0
.end method
