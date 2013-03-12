.class public Landroid/webkit/WebViewCore$ImageSelectionCopiedData;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageSelectionCopiedData"
.end annotation


# instance fields
.field handlesPath:Landroid/graphics/Path;

.field imageRect:Landroid/graphics/Rect;

.field mGranularity:I

.field outLinePath:Landroid/graphics/Path;

.field final synthetic this$0:Landroid/webkit/WebViewCore;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewCore;)V
    .locals 1
    .parameter

    .prologue
    .line 4563
    iput-object p1, p0, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->this$0:Landroid/webkit/WebViewCore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4564
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->imageRect:Landroid/graphics/Rect;

    .line 4566
    return-void
.end method
