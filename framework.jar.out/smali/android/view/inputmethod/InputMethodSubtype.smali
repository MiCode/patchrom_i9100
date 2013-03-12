.class public final Landroid/view/inputmethod/InputMethodSubtype;
.super Ljava/lang/Object;
.source "InputMethodSubtype.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXTRA_KEY_UNTRANSLATABLE_STRING_IN_SUBTYPE_NAME:Ljava/lang/String; = "UntranslatableReplacementStringInSubtypeName"

.field private static final EXTRA_VALUE_KEY_VALUE_SEPARATOR:Ljava/lang/String; = "="

.field private static final EXTRA_VALUE_PAIR_SEPARATOR:Ljava/lang/String; = ","

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile mExtraValueHashMapCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsAuxiliary:Z

.field private final mOverridesImplicitlyEnabledSubtype:Z

.field private final mSubtypeExtraValue:Ljava/lang/String;

.field private final mSubtypeHashCode:I

.field private final mSubtypeIconResId:I

.field private final mSubtypeLocale:Ljava/lang/String;

.field private final mSubtypeMode:Ljava/lang/String;

.field private final mSubtypeNameResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/inputmethod/InputMethodSubtype;->TAG:Ljava/lang/String;

    .line 328
    new-instance v0, Landroid/view/inputmethod/InputMethodSubtype$1;

    invoke-direct {v0}, Landroid/view/inputmethod/InputMethodSubtype$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .parameter "nameId"
    .parameter "iconId"
    .parameter "locale"
    .parameter "mode"
    .parameter "extraValue"
    .parameter "isAuxiliary"

    .prologue
    .line 89
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/view/inputmethod/InputMethodSubtype;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 90
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 5
    .parameter "nameId"
    .parameter "iconId"
    .parameter "locale"
    .parameter "mode"
    .parameter "extraValue"
    .parameter "isAuxiliary"
    .parameter "overridesImplicitlyEnabledSubtype"

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput p1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameResId:I

    .line 119
    iput p2, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeIconResId:I

    .line 120
    if-eqz p3, :cond_0

    .end local p3
    :goto_0
    iput-object p3, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLocale:Ljava/lang/String;

    .line 121
    if-eqz p4, :cond_1

    .end local p4
    :goto_1
    iput-object p4, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeMode:Ljava/lang/String;

    .line 122
    if-eqz p5, :cond_2

    .end local p5
    :goto_2
    iput-object p5, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    .line 123
    iput-boolean p6, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAuxiliary:Z

    .line 124
    iput-boolean p7, p0, Landroid/view/inputmethod/InputMethodSubtype;->mOverridesImplicitlyEnabledSubtype:Z

    .line 125
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLocale:Ljava/lang/String;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeMode:Ljava/lang/String;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    iget-boolean v3, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAuxiliary:Z

    iget-boolean v4, p0, Landroid/view/inputmethod/InputMethodSubtype;->mOverridesImplicitlyEnabledSubtype:Z

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/inputmethod/InputMethodSubtype;->hashCodeInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeHashCode:I

    .line 127
    return-void

    .line 120
    .restart local p3
    .restart local p4
    .restart local p5
    :cond_0
    const-string p3, ""

    goto :goto_0

    .line 121
    .end local p3
    :cond_1
    const-string p4, ""

    goto :goto_1

    .line 122
    .end local p4
    :cond_2
    const-string p5, ""

    goto :goto_2
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .parameter "source"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameResId:I

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeIconResId:I

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, s:Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0           #s:Ljava/lang/String;
    :goto_0
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLocale:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 136
    .restart local v0       #s:Ljava/lang/String;
    if-eqz v0, :cond_1

    .end local v0           #s:Ljava/lang/String;
    :goto_1
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeMode:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 138
    .restart local v0       #s:Ljava/lang/String;
    if-eqz v0, :cond_2

    .end local v0           #s:Ljava/lang/String;
    :goto_2
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_3

    move v1, v2

    :goto_3
    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAuxiliary:Z

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_4

    :goto_4
    iput-boolean v2, p0, Landroid/view/inputmethod/InputMethodSubtype;->mOverridesImplicitlyEnabledSubtype:Z

    .line 141
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLocale:Ljava/lang/String;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeMode:Ljava/lang/String;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    iget-boolean v4, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAuxiliary:Z

    iget-boolean v5, p0, Landroid/view/inputmethod/InputMethodSubtype;->mOverridesImplicitlyEnabledSubtype:Z

    invoke-static {v1, v2, v3, v4, v5}, Landroid/view/inputmethod/InputMethodSubtype;->hashCodeInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I

    move-result v1

    iput v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeHashCode:I

    .line 143
    return-void

    .line 134
    .restart local v0       #s:Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 136
    :cond_1
    const-string v0, ""

    goto :goto_1

    .line 138
    :cond_2
    const-string v0, ""

    goto :goto_2

    .end local v0           #s:Ljava/lang/String;
    :cond_3
    move v1, v3

    .line 139
    goto :goto_3

    :cond_4
    move v2, v3

    .line 140
    goto :goto_4
.end method

.method private static constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;
    .locals 7
    .parameter "localeStr"

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 342
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-object v1

    .line 344
    :cond_1
    const-string v2, "_"

    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, localeParams:[Ljava/lang/String;
    array-length v2, v0

    if-ne v2, v4, :cond_2

    .line 348
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 349
    :cond_2
    array-length v2, v0

    if-ne v2, v5, :cond_3

    .line 350
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    aget-object v3, v0, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 351
    :cond_3
    array-length v2, v0

    if-ne v2, v6, :cond_0

    .line 352
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    aget-object v3, v0, v4

    aget-object v4, v0, v5

    invoke-direct {v1, v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getExtraValueHashMap()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 249
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    if-nez v4, :cond_4

    .line 250
    monitor-enter p0

    .line 251
    :try_start_0
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    if-nez v4, :cond_3

    .line 252
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Landroid/view/inputmethod/InputMethodSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    .line 253
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 254
    .local v3, pairs:[Ljava/lang/String;
    array-length v0, v3

    .line 255
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 256
    aget-object v4, v3, v1

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 257
    .local v2, pair:[Ljava/lang/String;
    array-length v4, v2

    if-ne v4, v7, :cond_1

    .line 258
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    const/4 v5, 0x0

    aget-object v5, v2, v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 259
    :cond_1
    array-length v4, v2

    if-le v4, v7, :cond_0

    .line 260
    array-length v4, v2

    const/4 v5, 0x2

    if-le v4, v5, :cond_2

    .line 261
    sget-object v4, Landroid/view/inputmethod/InputMethodSubtype;->TAG:Ljava/lang/String;

    const-string v5, "ExtraValue has two or more \'=\'s"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_2
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    const/4 v5, 0x0

    aget-object v5, v2, v5

    const/4 v6, 0x1

    aget-object v6, v2, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 267
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #pair:[Ljava/lang/String;
    .end local v3           #pairs:[Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    :cond_4
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    return-object v4
.end method

.method private static hashCodeInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I
    .locals 3
    .parameter "locale"
    .parameter "mode"
    .parameter "extraValue"
    .parameter "isAuxiliary"
    .parameter "overridesImplicitlyEnabledSubtype"

    .prologue
    .line 359
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static sort(Landroid/content/Context;ILandroid/view/inputmethod/InputMethodInfo;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .parameter "context"
    .parameter "flags"
    .parameter "imi"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .prologue
    .line 374
    .local p3, subtypeList:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    if-nez p2, :cond_0

    .line 391
    .end local p3           #subtypeList:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :goto_0
    return-object p3

    .line 375
    .restart local p3       #subtypeList:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 377
    .local v3, inputSubtypesSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/view/inputmethod/InputMethodSubtype;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 378
    .local v4, sortedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v0

    .line 379
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 380
    invoke-virtual {p2, v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v5

    .line 381
    .local v5, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 382
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 379
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 388
    .end local v5           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_2
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodSubtype;

    .line 389
    .restart local v5       #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v5           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_3
    move-object p3, v4

    .line 391
    goto :goto_0
.end method


# virtual methods
.method public containsExtraValueKey(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 279
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValueHashMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 299
    instance-of v2, p1, Landroid/view/inputmethod/InputMethodSubtype;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 300
    check-cast v0, Landroid/view/inputmethod/InputMethodSubtype;

    .line 301
    .local v0, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->getNameResId()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getNameResId()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->getIconResId()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getIconResId()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v2

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 309
    .end local v0           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_0
    return v1
.end method

.method public getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .locals 8
    .parameter "context"
    .parameter "packageName"
    .parameter "appInfo"

    .prologue
    .line 217
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLocale:Ljava/lang/String;

    invoke-static {v5}, Landroid/view/inputmethod/InputMethodSubtype;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    .line 218
    .local v1, locale:Ljava/util/Locale;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, localeStr:Ljava/lang/String;
    :goto_0
    iget v5, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameResId:I

    if-nez v5, :cond_2

    .line 244
    .end local v2           #localeStr:Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v2

    .line 218
    :cond_1
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLocale:Ljava/lang/String;

    goto :goto_0

    .line 222
    .restart local v2       #localeStr:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget v6, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameResId:I

    invoke-virtual {v5, p2, v6, p3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 225
    .local v4, subtypeName:Ljava/lang/CharSequence;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Framework_JapaneseHWR"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "com.sec.android.inputmethod.iwnnime.japan"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 231
    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 232
    const-string v5, "UntranslatableReplacementStringInSubtypeName"

    invoke-virtual {p0, v5}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "UntranslatableReplacementStringInSubtypeName"

    invoke-virtual {p0, v5}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 237
    .local v3, replacementString:Ljava/lang/String;
    :goto_2
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    if-eqz v3, :cond_5

    .end local v3           #replacementString:Ljava/lang/String;
    :goto_3
    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    move-object v3, v2

    .line 232
    goto :goto_2

    .line 237
    .restart local v3       #replacementString:Ljava/lang/String;
    :cond_5
    const-string v3, ""
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 239
    .end local v3           #replacementString:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 240
    .local v0, e:Ljava/util/IllegalFormatException;
    sget-object v5, Landroid/view/inputmethod/InputMethodSubtype;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found illegal format in subtype name("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const-string v2, ""

    goto :goto_1
.end method

.method public getExtraValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraValueOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 289
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValueHashMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIconResId()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeIconResId:I

    return v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLocale:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeMode:Ljava/lang/String;

    return-object v0
.end method

.method public getNameResId()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameResId:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeHashCode:I

    return v0
.end method

.method public isAuxiliary()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAuxiliary:Z

    return v0
.end method

.method public overridesImplicitlyEnabledSubtype()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mOverridesImplicitlyEnabledSubtype:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "parcelableFlags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 319
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeIconResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLocale:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 324
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAuxiliary:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mOverridesImplicitlyEnabledSubtype:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    return-void

    :cond_0
    move v0, v2

    .line 324
    goto :goto_0

    :cond_1
    move v1, v2

    .line 325
    goto :goto_1
.end method
