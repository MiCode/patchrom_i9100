.class public Landroid/app/SpellScroll$Ingredient;
.super Landroid/app/ExtraAttr$Owner;
.source "SpellScroll.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SpellScroll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ingredient"
.end annotation


# static fields
.field public static final EXTRA_ATTR_KEY_INPUT_TIMING:Ljava/lang/String; = "inputTiming"

.field public static final EXTRA_ATTR_KEY_IS_ARRAY:Ljava/lang/String; = "isArray"

.field public static final EXTRA_ATTR_KEY_IS_MANDATORY:Ljava/lang/String; = "isMandatory"

.field public static final EXTRA_ATTR_KEY_IS_SINGLE_ARRAY:Ljava/lang/String; = "isSingleArray"

.field public static final EXTRA_ATTR_KEY_SCREEN_TYPE:Ljava/lang/String; = "screenType"

.field public static final EXTRA_ATTR_KEY_TEXT_VALIDATOR:Ljava/lang/String; = "textValidator"

.field public static final EXTRA_ATTR_KEY_VALUE_DELIMITER:Ljava/lang/String; = "valueDelimiter"


# instance fields
.field private final mDefaultValue:Ljava/lang/String;

.field private final mInputType:I

.field private final mLabelForId:I

.field private final mLabelId:I

.field private final mLocalHash:I

.field private final mName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "packageContext"
    .parameter "attr"

    .prologue
    const/4 v2, 0x0

    .line 749
    invoke-direct {p0}, Landroid/app/ExtraAttr$Owner;-><init>()V

    .line 750
    sget-object v1, Lcom/android/internal/R$styleable;->Ingredient:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 753
    .local v0, ta:Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SpellScroll$Ingredient;->mName:Ljava/lang/String;

    .line 754
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/app/SpellScroll$Ingredient;->mLabelId:I

    .line 755
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/app/SpellScroll$Ingredient;->mLabelForId:I

    .line 756
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/app/SpellScroll$Ingredient;->mInputType:I

    .line 757
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SpellScroll$Ingredient;->mDefaultValue:Ljava/lang/String;

    .line 759
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 762
    iget v1, p0, Landroid/app/SpellScroll$Ingredient;->mLabelId:I

    if-nez v1, :cond_0

    .line 763
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Ingredient label must be a resource reference."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 766
    :cond_0
    iget-object v1, p0, Landroid/app/SpellScroll$Ingredient;->mName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/SpellScroll$Ingredient;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 767
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "name may not be null!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 770
    :cond_2
    invoke-direct {p0}, Landroid/app/SpellScroll$Ingredient;->calculateLocalHash()I

    move-result v1

    iput v1, p0, Landroid/app/SpellScroll$Ingredient;->mLocalHash:I

    .line 771
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 773
    invoke-direct {p0}, Landroid/app/ExtraAttr$Owner;-><init>()V

    .line 774
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/SpellScroll$Ingredient;->mName:Ljava/lang/String;

    .line 775
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/SpellScroll$Ingredient;->mLabelId:I

    .line 776
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/SpellScroll$Ingredient;->mLabelForId:I

    .line 777
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/SpellScroll$Ingredient;->mInputType:I

    .line 778
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/SpellScroll$Ingredient;->mDefaultValue:Ljava/lang/String;

    .line 780
    iget-object v0, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 782
    invoke-direct {p0}, Landroid/app/SpellScroll$Ingredient;->calculateLocalHash()I

    move-result v0

    iput v0, p0, Landroid/app/SpellScroll$Ingredient;->mLocalHash:I

    .line 783
    return-void
.end method

.method private calculateLocalHash()I
    .locals 2

    .prologue
    .line 880
    iget v0, p0, Landroid/app/SpellScroll$Ingredient;->mLabelId:I

    .line 882
    .local v0, result:I
    iget v1, p0, Landroid/app/SpellScroll$Ingredient;->mLabelForId:I

    xor-int/2addr v0, v1

    .line 883
    iget v1, p0, Landroid/app/SpellScroll$Ingredient;->mInputType:I

    xor-int/2addr v0, v1

    .line 885
    iget-object v1, p0, Landroid/app/SpellScroll$Ingredient;->mName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 886
    iget-object v1, p0, Landroid/app/SpellScroll$Ingredient;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 889
    :cond_0
    iget-object v1, p0, Landroid/app/SpellScroll$Ingredient;->mDefaultValue:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 890
    iget-object v1, p0, Landroid/app/SpellScroll$Ingredient;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 893
    :cond_1
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 788
    const/4 v0, 0x0

    return v0
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 2
    .parameter "pw"

    .prologue
    .line 861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      Ingredient: mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/SpellScroll$Ingredient;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "hashCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/SpellScroll$Ingredient;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLabelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/SpellScroll$Ingredient;->mLabelId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLabelForId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/SpellScroll$Ingredient;->mLabelForId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "        mDefaultValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/SpellScroll$Ingredient;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", textValidator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/SpellScroll$Ingredient;->getTextValidator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isMandatory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/SpellScroll$Ingredient;->isMandatory()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInputType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/SpellScroll$Ingredient;->mInputType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "        screenType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/SpellScroll$Ingredient;->getScreenType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isSingleArray="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/SpellScroll$Ingredient;->isSingleArray()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isArray="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/SpellScroll$Ingredient;->isArray()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", valueDelimiter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/SpellScroll$Ingredient;->getValueDelimiter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 874
    invoke-virtual {p0}, Landroid/app/SpellScroll$Ingredient;->getExtraAttrsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 875
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "        mExtraAttrs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/SpellScroll$Ingredient;->getExtraAttrsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 877
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "otherObj"

    .prologue
    const/4 v1, 0x0

    .line 903
    instance-of v2, p1, Landroid/app/SpellScroll$Ingredient;

    if-nez v2, :cond_1

    .line 931
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 907
    check-cast v0, Landroid/app/SpellScroll$Ingredient;

    .line 909
    .local v0, other:Landroid/app/SpellScroll$Ingredient;
    invoke-virtual {p0}, Landroid/app/SpellScroll$Ingredient;->hashCode()I

    move-result v2

    invoke-virtual {v0}, Landroid/app/SpellScroll$Ingredient;->hashCode()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 913
    iget v2, p0, Landroid/app/SpellScroll$Ingredient;->mLabelId:I

    iget v3, v0, Landroid/app/SpellScroll$Ingredient;->mLabelId:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/app/SpellScroll$Ingredient;->mLabelForId:I

    iget v3, v0, Landroid/app/SpellScroll$Ingredient;->mLabelForId:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/app/SpellScroll$Ingredient;->mInputType:I

    iget v3, v0, Landroid/app/SpellScroll$Ingredient;->mInputType:I

    if-ne v2, v3, :cond_0

    .line 919
    iget-object v2, p0, Landroid/app/SpellScroll$Ingredient;->mName:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroid/app/SpellScroll$Ingredient;->mName:Ljava/lang/String;

    if-eqz v2, :cond_0

    :cond_2
    iget-object v2, p0, Landroid/app/SpellScroll$Ingredient;->mName:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object v2, v0, Landroid/app/SpellScroll$Ingredient;->mName:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_3
    iget-object v2, p0, Landroid/app/SpellScroll$Ingredient;->mName:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/app/SpellScroll$Ingredient;->mName:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/SpellScroll$Ingredient;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 925
    :cond_4
    iget-object v2, p0, Landroid/app/SpellScroll$Ingredient;->mDefaultValue:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, v0, Landroid/app/SpellScroll$Ingredient;->mDefaultValue:Ljava/lang/String;

    if-eqz v2, :cond_0

    :cond_5
    iget-object v2, p0, Landroid/app/SpellScroll$Ingredient;->mDefaultValue:Ljava/lang/String;

    if-nez v2, :cond_6

    iget-object v2, v0, Landroid/app/SpellScroll$Ingredient;->mDefaultValue:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_6
    iget-object v2, p0, Landroid/app/SpellScroll$Ingredient;->mDefaultValue:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/app/SpellScroll$Ingredient;->mDefaultValue:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/SpellScroll$Ingredient;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 931
    :cond_7
    invoke-super {p0, p1}, Landroid/app/ExtraAttr$Owner;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Landroid/app/SpellScroll$Ingredient;->mDefaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public getInputTiming()Ljava/lang/String;
    .locals 2

    .prologue
    .line 857
    iget-object v0, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    const-string v1, "inputTiming"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 815
    iget v0, p0, Landroid/app/SpellScroll$Ingredient;->mInputType:I

    return v0
.end method

.method public getLabelForId()I
    .locals 1

    .prologue
    .line 811
    iget v0, p0, Landroid/app/SpellScroll$Ingredient;->mLabelForId:I

    return v0
.end method

.method public getLabelId()I
    .locals 1

    .prologue
    .line 807
    iget v0, p0, Landroid/app/SpellScroll$Ingredient;->mLabelId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Landroid/app/SpellScroll$Ingredient;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 831
    iget-object v0, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    const-string v1, "screenType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextValidator()Ljava/lang/String;
    .locals 2

    .prologue
    .line 823
    iget-object v0, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    const-string v1, "textValidator"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValueDelimiter()Ljava/lang/String;
    .locals 3

    .prologue
    .line 853
    iget-object v0, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    const-string v1, "valueDelimiter"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 898
    iget v0, p0, Landroid/app/SpellScroll$Ingredient;->mLocalHash:I

    invoke-super {p0}, Landroid/app/ExtraAttr$Owner;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isArray()Z
    .locals 3

    .prologue
    .line 845
    :try_start_0
    iget-object v0, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    const-string v1, "isArray"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 849
    :goto_0
    return v0

    .line 846
    :catch_0
    move-exception v0

    .line 849
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMandatory()Z
    .locals 3

    .prologue
    .line 827
    iget-object v0, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    const-string v1, "isMandatory"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isSingleArray()Z
    .locals 3

    .prologue
    .line 836
    :try_start_0
    iget-object v0, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    const-string v1, "isSingleArray"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 840
    :goto_0
    return v0

    .line 837
    :catch_0
    move-exception v0

    .line 840
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 793
    iget-object v0, p0, Landroid/app/SpellScroll$Ingredient;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 794
    iget v0, p0, Landroid/app/SpellScroll$Ingredient;->mLabelId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 795
    iget v0, p0, Landroid/app/SpellScroll$Ingredient;->mLabelForId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 796
    iget v0, p0, Landroid/app/SpellScroll$Ingredient;->mInputType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 797
    iget-object v0, p0, Landroid/app/SpellScroll$Ingredient;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 799
    iget-object v0, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 800
    return-void
.end method
