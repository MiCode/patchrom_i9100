.class final Landroid/text/util/Linkify$2;
.super Ljava/lang/Object;
.source "Linkify.java"

# interfaces
.implements Landroid/text/util/Linkify$MatchFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/util/Linkify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final acceptMatch(Ljava/lang/CharSequence;II)Z
    .locals 3
    .parameter "s"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 124
    const/4 v0, 0x0

    .line 126
    .local v0, digitCount:I
    move v1, p2

    .local v1, i:I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 127
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    add-int/lit8 v0, v0, 0x1

    .line 129
    invoke-static {}, Landroid/text/util/Linkify;->access$000()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 130
    const/4 v2, 0x1

    .line 134
    :goto_1
    return v2

    .line 126
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
