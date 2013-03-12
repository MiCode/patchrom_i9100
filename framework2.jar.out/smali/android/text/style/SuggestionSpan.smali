.class public Landroid/text/style/SuggestionSpan;
.super Landroid/text/style/CharacterStyle;
.source "SuggestionSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# static fields
.field public static final ACTION_SUGGESTION_PICKED:Ljava/lang/String; = "android.text.style.SUGGESTION_PICKED"

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/text/style/SuggestionSpan;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_AUTO_CORRECTION:I = 0x4

.field public static final FLAG_EASY_CORRECT:I = 0x1

.field public static final FLAG_MISSPELLED:I = 0x2

.field public static final SUGGESTIONS_MAX_SIZE:I = 0x5

.field public static final SUGGESTION_SPAN_PICKED_AFTER:Ljava/lang/String; = "after"

.field public static final SUGGESTION_SPAN_PICKED_BEFORE:Ljava/lang/String; = "before"

.field public static final SUGGESTION_SPAN_PICKED_HASHCODE:Ljava/lang/String; = "hashcode"


# instance fields
.field private mAutoCorrectionUnderlineColor:I

.field private mAutoCorrectionUnderlineThickness:F

.field private mEasyCorrectUnderlineColor:I

.field private mEasyCorrectUnderlineThickness:F

.field private mFlags:I

.field private final mHashCode:I

.field private final mLocaleString:Ljava/lang/String;

.field private mMisspelledUnderlineColor:I

.field private mMisspelledUnderlineThickness:F

.field private final mNotificationTargetClassName:Ljava/lang/String;

.field private final mSuggestions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 276
    new-instance v0, Landroid/text/style/SuggestionSpan$1;

    invoke-direct {v0}, Landroid/text/style/SuggestionSpan$1;-><init>()V

    sput-object v0, Landroid/text/style/SuggestionSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Locale;[Ljava/lang/String;ILjava/lang/Class;)V
    .locals 4
    .parameter "context"
    .parameter "locale"
    .parameter "suggestions"
    .parameter "flags"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Locale;",
            "[",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p5, notificationTargetClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 125
    const/4 v1, 0x5

    array-length v2, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 126
    .local v0, N:I
    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    .line 127
    iput p4, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    .line 128
    if-eqz p2, :cond_0

    .line 129
    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/text/style/SuggestionSpan;->mLocaleString:Ljava/lang/String;

    .line 137
    :goto_0
    if-eqz p5, :cond_2

    .line 138
    invoke-virtual {p5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetClassName:Ljava/lang/String;

    .line 142
    :goto_1
    iget-object v1, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    iget-object v2, p0, Landroid/text/style/SuggestionSpan;->mLocaleString:Ljava/lang/String;

    iget-object v3, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetClassName:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/text/style/SuggestionSpan;->hashCodeInternal([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/text/style/SuggestionSpan;->mHashCode:I

    .line 144
    invoke-direct {p0, p1}, Landroid/text/style/SuggestionSpan;->initStyle(Landroid/content/Context;)V

    .line 145
    return-void

    .line 130
    :cond_0
    if-eqz p1, :cond_1

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/text/style/SuggestionSpan;->mLocaleString:Ljava/lang/String;

    goto :goto_0

    .line 133
    :cond_1
    const-string v1, "SuggestionSpan"

    const-string v2, "No locale or context specified in SuggestionSpan constructor"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v1, ""

    iput-object v1, p0, Landroid/text/style/SuggestionSpan;->mLocaleString:Ljava/lang/String;

    goto :goto_0

    .line 140
    :cond_2
    const-string v1, ""

    iput-object v1, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetClassName:Ljava/lang/String;

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;I)V
    .locals 6
    .parameter "context"
    .parameter "suggestions"
    .parameter "flags"

    .prologue
    const/4 v2, 0x0

    .line 102
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Landroid/text/style/SuggestionSpan;-><init>(Landroid/content/Context;Ljava/util/Locale;[Ljava/lang/String;ILjava/lang/Class;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "src"

    .prologue
    .line 183
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/SuggestionSpan;->mLocaleString:Ljava/lang/String;

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetClassName:Ljava/lang/String;

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mHashCode:I

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineThickness:F

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineThickness:F

    .line 195
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;[Ljava/lang/String;I)V
    .locals 6
    .parameter "locale"
    .parameter "suggestions"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    .line 111
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/text/style/SuggestionSpan;-><init>(Landroid/content/Context;Ljava/util/Locale;[Ljava/lang/String;ILjava/lang/Class;)V

    .line 112
    return-void
.end method

.method private static hashCodeInternal([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "suggestions"
    .parameter "locale"
    .parameter "notificationTargetClassName"

    .prologue
    .line 272
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private initStyle(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, -0x100

    const/4 v3, 0x0

    .line 148
    if-nez p1, :cond_0

    .line 149
    iput v3, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    .line 150
    iput v3, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineThickness:F

    .line 151
    iput v3, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineThickness:F

    .line 152
    iput v4, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    .line 153
    iput v4, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    .line 154
    iput v4, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    .line 181
    :goto_0
    return-void

    .line 158
    :cond_0
    const v0, 0x10103b2

    .line 159
    .local v0, defStyle:I
    sget-object v2, Lcom/android/internal/R$styleable;->SuggestionSpan:[I

    invoke-virtual {p1, v7, v2, v0, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 161
    .local v1, typedArray:Landroid/content/res/TypedArray;
    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    .line 163
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    .line 166
    const v0, 0x10103b1

    .line 167
    sget-object v2, Lcom/android/internal/R$styleable;->SuggestionSpan:[I

    invoke-virtual {p1, v7, v2, v0, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 169
    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineThickness:F

    .line 171
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    .line 174
    const v0, 0x10103b3

    .line 175
    sget-object v2, Lcom/android/internal/R$styleable;->SuggestionSpan:[I

    invoke-virtual {p1, v7, v2, v0, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 177
    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineThickness:F

    .line 179
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    const/4 v0, 0x0

    .line 259
    instance-of v1, p1, Landroid/text/style/SuggestionSpan;

    if-eqz v1, :cond_0

    .line 260
    check-cast p1, Landroid/text/style/SuggestionSpan;

    .end local p1
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->hashCode()I

    move-result v1

    iget v2, p0, Landroid/text/style/SuggestionSpan;->mHashCode:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 262
    :cond_0
    return v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    return v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mLocaleString:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationTargetClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getSpanTypeId()I
    .locals 1

    .prologue
    .line 254
    const/16 v0, 0x13

    return v0
.end method

.method public getSuggestions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    return-object v0
.end method

.method public getUnderlineColor()I
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 314
    iget v5, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    move v2, v3

    .line 315
    .local v2, misspelled:Z
    :goto_0
    iget v5, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    move v1, v3

    .line 316
    .local v1, easy:Z
    :goto_1
    iget v5, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_3

    move v0, v3

    .line 317
    .local v0, autoCorrection:Z
    :goto_2
    if-eqz v1, :cond_5

    .line 318
    if-nez v2, :cond_4

    .line 319
    iget v4, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    .line 326
    :cond_0
    :goto_3
    return v4

    .end local v0           #autoCorrection:Z
    .end local v1           #easy:Z
    .end local v2           #misspelled:Z
    :cond_1
    move v2, v4

    .line 314
    goto :goto_0

    .restart local v2       #misspelled:Z
    :cond_2
    move v1, v4

    .line 315
    goto :goto_1

    .restart local v1       #easy:Z
    :cond_3
    move v0, v4

    .line 316
    goto :goto_2

    .line 321
    .restart local v0       #autoCorrection:Z
    :cond_4
    iget v4, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    goto :goto_3

    .line 323
    :cond_5
    if-eqz v0, :cond_0

    .line 324
    iget v4, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    goto :goto_3
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mHashCode:I

    return v0
.end method

.method public setFlags(I)V
    .locals 0
    .parameter "flags"

    .prologue
    .line 229
    iput p1, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    .line 230
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 6
    .parameter "tp"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 291
    iget v5, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    move v2, v3

    .line 292
    .local v2, misspelled:Z
    :goto_0
    iget v5, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    move v1, v3

    .line 293
    .local v1, easy:Z
    :goto_1
    iget v5, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_3

    move v0, v3

    .line 294
    .local v0, autoCorrection:Z
    :goto_2
    if-eqz v1, :cond_5

    .line 295
    if-nez v2, :cond_4

    .line 296
    iget v3, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    iget v4, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineThickness:F

    invoke-virtual {p1, v3, v4}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    .line 305
    :cond_0
    :goto_3
    return-void

    .end local v0           #autoCorrection:Z
    .end local v1           #easy:Z
    .end local v2           #misspelled:Z
    :cond_1
    move v2, v4

    .line 291
    goto :goto_0

    .restart local v2       #misspelled:Z
    :cond_2
    move v1, v4

    .line 292
    goto :goto_1

    .restart local v1       #easy:Z
    :cond_3
    move v0, v4

    .line 293
    goto :goto_2

    .line 297
    .restart local v0       #autoCorrection:Z
    :cond_4
    iget v3, p1, Landroid/text/TextPaint;->underlineColor:I

    if-nez v3, :cond_0

    .line 300
    iget v3, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    iget v4, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    invoke-virtual {p1, v3, v4}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    goto :goto_3

    .line 302
    :cond_5
    if-eqz v0, :cond_0

    .line 303
    iget v3, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    iget v4, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineThickness:F

    invoke-virtual {p1, v3, v4}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    goto :goto_3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 239
    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 240
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mLocaleString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetClassName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 243
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mHashCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineThickness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 246
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 248
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineThickness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 250
    return-void
.end method
