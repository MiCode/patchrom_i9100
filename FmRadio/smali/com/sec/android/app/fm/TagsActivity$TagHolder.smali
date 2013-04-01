.class Lcom/sec/android/app/fm/TagsActivity$TagHolder;
.super Ljava/lang/Object;
.source "TagsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/TagsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TagHolder"
.end annotation


# instance fields
.field public info:Landroid/widget/TextView;

.field public link:Landroid/widget/ImageButton;

.field public title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 361
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/fm/TagsActivity$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 361
    invoke-direct {p0}, Lcom/sec/android/app/fm/TagsActivity$TagHolder;-><init>()V

    return-void
.end method
