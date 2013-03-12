.class final Landroid/app/ExtraAttr;
.super Ljava/lang/Object;
.source "SpellScroll.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ExtraAttr$Owner;
    }
.end annotation


# instance fields
.field private final mLocalHash:I

.field private final mName:Ljava/lang/String;

.field private final mValue:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "packageContext"
    .parameter "attr"

    .prologue
    .line 1680
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1681
    sget-object v1, Lcom/android/internal/R$styleable;->SpellExtraAttr:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1684
    .local v0, ta:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ExtraAttr;->mName:Ljava/lang/String;

    .line 1685
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ExtraAttr;->mValue:Ljava/lang/String;

    .line 1687
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1689
    invoke-direct {p0}, Landroid/app/ExtraAttr;->calculateLocalHash()I

    move-result v1

    iput v1, p0, Landroid/app/ExtraAttr;->mLocalHash:I

    .line 1690
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 1692
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1693
    iput-object p1, p0, Landroid/app/ExtraAttr;->mName:Ljava/lang/String;

    .line 1694
    iput-object p2, p0, Landroid/app/ExtraAttr;->mValue:Ljava/lang/String;

    .line 1696
    invoke-direct {p0}, Landroid/app/ExtraAttr;->calculateLocalHash()I

    move-result v0

    iput v0, p0, Landroid/app/ExtraAttr;->mLocalHash:I

    .line 1697
    return-void
.end method

.method private calculateLocalHash()I
    .locals 2

    .prologue
    .line 1700
    const/4 v0, 0x0

    .line 1702
    .local v0, result:I
    iget-object v1, p0, Landroid/app/ExtraAttr;->mName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1703
    iget-object v1, p0, Landroid/app/ExtraAttr;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 1706
    :cond_0
    iget-object v1, p0, Landroid/app/ExtraAttr;->mValue:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1707
    iget-object v1, p0, Landroid/app/ExtraAttr;->mValue:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 1710
    :cond_1
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "otherObj"

    .prologue
    const/4 v1, 0x0

    .line 1728
    instance-of v2, p1, Landroid/app/ExtraAttr;

    if-nez v2, :cond_1

    .line 1750
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 1732
    check-cast v0, Landroid/app/ExtraAttr;

    .line 1734
    .local v0, other:Landroid/app/ExtraAttr;
    iget v2, p0, Landroid/app/ExtraAttr;->mLocalHash:I

    iget v3, v0, Landroid/app/ExtraAttr;->mLocalHash:I

    if-ne v2, v3, :cond_0

    .line 1738
    iget-object v2, p0, Landroid/app/ExtraAttr;->mName:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, v0, Landroid/app/ExtraAttr;->mName:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_2
    iget-object v2, p0, Landroid/app/ExtraAttr;->mName:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, v0, Landroid/app/ExtraAttr;->mName:Ljava/lang/String;

    if-eqz v2, :cond_0

    :cond_3
    iget-object v2, p0, Landroid/app/ExtraAttr;->mName:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/app/ExtraAttr;->mName:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/ExtraAttr;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1744
    :cond_4
    iget-object v2, p0, Landroid/app/ExtraAttr;->mValue:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, v0, Landroid/app/ExtraAttr;->mValue:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_5
    iget-object v2, p0, Landroid/app/ExtraAttr;->mValue:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, v0, Landroid/app/ExtraAttr;->mValue:Ljava/lang/String;

    if-eqz v2, :cond_0

    :cond_6
    iget-object v2, p0, Landroid/app/ExtraAttr;->mValue:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/app/ExtraAttr;->mValue:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/ExtraAttr;->mValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1750
    :cond_7
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1714
    iget-object v0, p0, Landroid/app/ExtraAttr;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1718
    iget-object v0, p0, Landroid/app/ExtraAttr;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1723
    iget v0, p0, Landroid/app/ExtraAttr;->mLocalHash:I

    return v0
.end method
