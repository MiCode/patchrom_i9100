.class public Lcom/sec/android/app/fm/ui/FavoriteButton;
.super Landroid/widget/FrameLayout;
.source "FavoriteButton.java"


# static fields
.field private static cl_normal:Landroid/content/res/ColorStateList;

.field private static cl_yellow:Landroid/content/res/ColorStateList;


# instance fields
.field private mActivity:Lcom/sec/android/app/fm/MainActivity;

.field private mAddImageView:Landroid/widget/ImageView;

.field private mChannelFrequencyY:I

.field private mChannelStationY:I

.field private mContext:Landroid/content/Context;

.field private mDelImageView:Landroid/widget/ImageView;

.field private mDelImg:Landroid/graphics/drawable/Drawable;

.field private mFrequencyText:Ljava/lang/String;

.field private mFrequencyTextSize:F

.field private mFrequencyTextView:Landroid/widget/TextView;

.field private mIsDelState:Z

.field private mState:I

.field private mStationText:Ljava/lang/String;

.field private mStationTextSize:F

.field private mStationTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    sput-object v0, Lcom/sec/android/app/fm/ui/FavoriteButton;->cl_normal:Landroid/content/res/ColorStateList;

    .line 57
    sput-object v0, Lcom/sec/android/app/fm/ui/FavoriteButton;->cl_yellow:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mStationText:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mFrequencyText:Ljava/lang/String;

    .line 52
    iput-boolean v3, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mIsDelState:Z

    .line 61
    iput-object p1, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mContext:Landroid/content/Context;

    .line 62
    sget-object v1, Lcom/sec/android/app/fm/R$styleable;->FavoriteButton:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 66
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mDelImg:Landroid/graphics/drawable/Drawable;

    .line 68
    const/4 v1, 0x5

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mChannelFrequencyY:I

    .line 69
    const/4 v1, 0x6

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mChannelStationY:I

    .line 71
    const/16 v1, 0x8

    const/high16 v2, 0x4198

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mFrequencyTextSize:F

    .line 72
    const/16 v1, 0x9

    const/high16 v2, 0x4160

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mStationTextSize:F

    .line 75
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mFrequencyTextView:Landroid/widget/TextView;

    .line 77
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mFrequencyTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mFrequencyTextSize:F

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 78
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mFrequencyTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mChannelFrequencyY:I

    invoke-virtual {v1, v3, v3, v3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 79
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mFrequencyTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 80
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mFrequencyTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 81
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mFrequencyTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 85
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mFrequencyTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    .line 87
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mStationTextView:Landroid/widget/TextView;

    .line 88
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mStationTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mStationTextSize:F

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 89
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mStationTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mChannelStationY:I

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 90
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mStationTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 91
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mStationTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 92
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mStationTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 96
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mStationTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    .line 98
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mDelImageView:Landroid/widget/ImageView;

    .line 99
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mDelImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mDelImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mDelImg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mDelImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 103
    invoke-virtual {p0, v4}, Lcom/sec/android/app/fm/ui/FavoriteButton;->setFocusable(Z)V

    .line 104
    invoke-virtual {p0, v4}, Lcom/sec/android/app/fm/ui/FavoriteButton;->setClickable(Z)V

    .line 106
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mAddImageView:Landroid/widget/ImageView;

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.hovering_ui"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eq v1, v4, :cond_0

    .line 111
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mAddImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02003a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    :goto_0
    const v1, 0x7f02001b

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/ui/FavoriteButton;->setBackgroundResource(I)V

    .line 119
    check-cast p1, Lcom/sec/android/app/fm/MainActivity;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mActivity:Lcom/sec/android/app/fm/MainActivity;

    .line 127
    invoke-direct {p0}, Lcom/sec/android/app/fm/ui/FavoriteButton;->makeFavoriteButtonTextColor()V

    .line 129
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mActivity:Lcom/sec/android/app/fm/MainActivity;

    iget-object v1, v1, Lcom/sec/android/app/fm/MainActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/ui/FavoriteButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    return-void

    .line 109
    .restart local p1
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mAddImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02003b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private changeVisibility()V
    .locals 6

    .prologue
    const/16 v1, 0x8

    const/4 v5, 0x0

    .line 297
    iget v0, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 325
    :goto_0
    return-void

    .line 299
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mFrequencyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mStationTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mDelImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mAddImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0086

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0087

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/ui/FavoriteButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 309
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/fm/ui/FavoriteButton;->isDelState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mDelImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 314
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mFrequencyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mStationTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mAddImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mDelImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 297
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getDataFromDb()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mFrequencyText:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 198
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mFrequencyText:Ljava/lang/String;

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mStationText:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 201
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mStationText:Ljava/lang/String;

    .line 203
    :cond_1
    return-void
.end method

.method private isDelState()Z
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mIsDelState:Z

    return v0
.end method

.method private makeFavoriteButtonTextColor()V
    .locals 4

    .prologue
    .line 161
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200e3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 162
    .local v1, xpp:Landroid/content/res/XmlResourceParser;
    iget-object v2, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/fm/ui/FavoriteButton;->cl_normal:Landroid/content/res/ColorStateList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v1           #xpp:Landroid/content/res/XmlResourceParser;
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200e4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 188
    .restart local v1       #xpp:Landroid/content/res/XmlResourceParser;
    iget-object v2, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/fm/ui/FavoriteButton;->cl_yellow:Landroid/content/res/ColorStateList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 194
    .end local v1           #xpp:Landroid/content/res/XmlResourceParser;
    :goto_1
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 165
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 166
    :catch_1
    move-exception v2

    goto :goto_0

    .line 189
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 191
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 192
    :catch_3
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/16 v4, 0x11

    const/4 v2, -0x1

    const/4 v3, -0x2

    .line 136
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mFrequencyTextView:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/ui/FavoriteButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mStationTextView:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/ui/FavoriteButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mDelImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x5

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/ui/FavoriteButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mAddImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/ui/FavoriteButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FavoriteButton;->setFreqTextColorAsNormal()V

    .line 142
    invoke-direct {p0}, Lcom/sec/android/app/fm/ui/FavoriteButton;->getDataFromDb()V

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mFrequencyText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 149
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/ui/FavoriteButton;->setState(I)V

    .line 155
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FavoriteButton;->setStationFrequencyText()V

    .line 156
    return-void

    .line 152
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/ui/FavoriteButton;->setState(I)V

    goto :goto_0
.end method

.method public setFreqTextColorAsNormal()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mFrequencyTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/sec/android/app/fm/ui/FavoriteButton;->cl_normal:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 293
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mStationTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/sec/android/app/fm/ui/FavoriteButton;->cl_normal:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 294
    return-void
.end method

.method public setFreqTextColorAsPlay()V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mFrequencyTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/sec/android/app/fm/ui/FavoriteButton;->cl_yellow:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 288
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mStationTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/sec/android/app/fm/ui/FavoriteButton;->cl_yellow:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 289
    return-void
.end method

.method public setFrequencyText(Ljava/lang/String;)V
    .locals 8
    .parameter "text"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 231
    iput-object p1, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mFrequencyText:Ljava/lang/String;

    .line 232
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mFrequencyTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mFrequencyTextView:Landroid/widget/TextView;

    const v2, 0x3e99999a

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    const/high16 v5, -0x4d00

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 234
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0086

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0088

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, desc:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/ui/FavoriteButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mStationTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mFrequencyTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 238
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FavoriteButton;->invalidate()V

    .line 239
    return-void
.end method

.method public setState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 207
    iput p1, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mState:I

    .line 208
    invoke-direct {p0}, Lcom/sec/android/app/fm/ui/FavoriteButton;->changeVisibility()V

    .line 209
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FavoriteButton;->invalidate()V

    .line 210
    return-void
.end method

.method public setStationFrequencyText()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/high16 v6, -0x4d00

    const/high16 v5, 0x3f80

    const v4, 0x3e99999a

    const/4 v3, 0x0

    .line 262
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mFrequencyTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mFrequencyText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mFrequencyTextView:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 264
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mFrequencyTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v3, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 265
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mStationTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mStationText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mStationTextView:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 267
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mStationTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v3, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 269
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0086

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0088

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mFrequencyText:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mStationText:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, desc:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/ui/FavoriteButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mStationTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mFrequencyTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 273
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FavoriteButton;->invalidate()V

    .line 274
    return-void
.end method

.method public setStationFrequencyText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "frequencyText"
    .parameter "stationText"

    .prologue
    const/4 v9, 0x0

    const/high16 v5, -0x4d00

    const/high16 v4, 0x3f80

    const v3, 0x3e99999a

    const/4 v2, 0x0

    .line 246
    iput-object p2, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mStationText:Ljava/lang/String;

    .line 247
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mStationTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mStationTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 249
    iput-object p1, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mFrequencyText:Ljava/lang/String;

    .line 250
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mFrequencyTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mFrequencyTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 253
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0086

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0088

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, desc:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/ui/FavoriteButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mStationTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FavoriteButton;->mFrequencyTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 257
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FavoriteButton;->invalidate()V

    .line 258
    return-void
.end method
