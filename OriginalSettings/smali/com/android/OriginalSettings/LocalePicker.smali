.class public Lcom/android/OriginalSettings/LocalePicker;
.super Lcom/android/internal/app/LocalePicker;
.source "LocalePicker.java"

# interfaces
.implements Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/internal/app/LocalePicker;-><init>()V

    .line 34
    invoke-virtual {p0, p0}, Lcom/android/OriginalSettings/LocalePicker;->setLocaleSelectionListener(Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;)V

    .line 35
    return-void
.end method


# virtual methods
.method public exchangeLocaleOrder()V
    .locals 13

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocalePicker;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 63
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    if-nez v0, :cond_0

    .line 245
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    .line 69
    .local v2, finalSize:I
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 71
    .local v6, mContext:Landroid/content/Context;
    new-array v5, v2, [Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 72
    .local v5, localeInfos:[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    new-array v10, v2, [Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 74
    .local v10, mTempLocales:[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 75
    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    aput-object v11, v10, v3

    .line 74
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 77
    :cond_1
    invoke-static {v10}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 147
    const/4 v11, 0x6

    new-array v9, v11, [Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 148
    .local v9, mFindLocales:[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    const/4 v11, 0x6

    new-array v8, v11, [I

    .line 149
    .local v8, mFindIndexs:[I
    const/4 v7, 0x0

    .line 152
    .local v7, mFindCounts:I
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_2

    .line 153
    aget-object v11, v10, v3

    invoke-virtual {v11}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "zh_HK"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 154
    aget-object v11, v10, v3

    aput-object v11, v9, v7

    .line 155
    aput v3, v8, v7

    .line 156
    add-int/lit8 v7, v7, 0x1

    .line 161
    :cond_2
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_3

    .line 162
    aget-object v11, v10, v3

    invoke-virtual {v11}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "zh_TW"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 163
    aget-object v11, v10, v3

    aput-object v11, v9, v7

    .line 164
    aput v3, v8, v7

    .line 165
    add-int/lit8 v7, v7, 0x1

    .line 170
    :cond_3
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_4

    .line 171
    aget-object v11, v10, v3

    invoke-virtual {v11}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "zh_CN"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 172
    aget-object v11, v10, v3

    aput-object v11, v9, v7

    .line 173
    aput v3, v8, v7

    .line 174
    add-int/lit8 v7, v7, 0x1

    .line 179
    :cond_4
    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_5

    .line 180
    aget-object v11, v10, v3

    invoke-virtual {v11}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "en_US"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 181
    aget-object v11, v10, v3

    aput-object v11, v9, v7

    .line 182
    aput v3, v8, v7

    .line 183
    add-int/lit8 v7, v7, 0x1

    .line 188
    :cond_5
    const/4 v3, 0x0

    :goto_6
    if-ge v3, v2, :cond_6

    .line 189
    aget-object v11, v10, v3

    invoke-virtual {v11}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "en_GB"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 190
    aget-object v11, v10, v3

    aput-object v11, v9, v7

    .line 191
    aput v3, v8, v7

    .line 192
    add-int/lit8 v7, v7, 0x1

    .line 197
    :cond_6
    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_7

    .line 198
    aget-object v11, v10, v3

    invoke-virtual {v11}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "ko_KR"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 199
    aget-object v11, v10, v3

    aput-object v11, v9, v7

    .line 200
    aput v3, v8, v7

    .line 201
    add-int/lit8 v7, v7, 0x1

    .line 206
    :cond_7
    const/4 v3, 0x0

    :goto_8
    if-ge v3, v7, :cond_e

    .line 207
    aget-object v11, v9, v3

    aput-object v11, v5, v3

    .line 206
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 152
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 161
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 170
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    .line 179
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 188
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 197
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 210
    :cond_e
    move v4, v7

    .line 211
    .local v4, j:I
    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_16

    .line 212
    const/4 v11, 0x6

    if-ne v7, v11, :cond_10

    .line 213
    const/4 v11, 0x0

    aget v11, v8, v11

    if-eq v11, v3, :cond_f

    const/4 v11, 0x1

    aget v11, v8, v11

    if-eq v11, v3, :cond_f

    const/4 v11, 0x2

    aget v11, v8, v11

    if-eq v11, v3, :cond_f

    const/4 v11, 0x3

    aget v11, v8, v11

    if-eq v11, v3, :cond_f

    const/4 v11, 0x4

    aget v11, v8, v11

    if-eq v11, v3, :cond_f

    const/4 v11, 0x5

    aget v11, v8, v11

    if-ne v11, v3, :cond_10

    .line 211
    :cond_f
    :goto_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 216
    :cond_10
    const/4 v11, 0x5

    if-ne v7, v11, :cond_11

    .line 217
    const/4 v11, 0x0

    aget v11, v8, v11

    if-eq v11, v3, :cond_f

    const/4 v11, 0x1

    aget v11, v8, v11

    if-eq v11, v3, :cond_f

    const/4 v11, 0x2

    aget v11, v8, v11

    if-eq v11, v3, :cond_f

    const/4 v11, 0x3

    aget v11, v8, v11

    if-eq v11, v3, :cond_f

    const/4 v11, 0x4

    aget v11, v8, v11

    if-eq v11, v3, :cond_f

    .line 220
    :cond_11
    const/4 v11, 0x4

    if-ne v7, v11, :cond_13

    .line 221
    const/4 v11, 0x0

    aget v11, v8, v11

    if-eq v11, v3, :cond_f

    const/4 v11, 0x1

    aget v11, v8, v11

    if-eq v11, v3, :cond_f

    const/4 v11, 0x2

    aget v11, v8, v11

    if-eq v11, v3, :cond_f

    const/4 v11, 0x3

    aget v11, v8, v11

    if-eq v11, v3, :cond_f

    .line 236
    :cond_12
    aget-object v11, v10, v3

    aput-object v11, v5, v4

    .line 237
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 224
    :cond_13
    const/4 v11, 0x3

    if-ne v7, v11, :cond_14

    .line 225
    const/4 v11, 0x0

    aget v11, v8, v11

    if-eq v11, v3, :cond_f

    const/4 v11, 0x1

    aget v11, v8, v11

    if-eq v11, v3, :cond_f

    const/4 v11, 0x2

    aget v11, v8, v11

    if-ne v11, v3, :cond_12

    goto :goto_a

    .line 228
    :cond_14
    const/4 v11, 0x2

    if-ne v7, v11, :cond_15

    .line 229
    const/4 v11, 0x0

    aget v11, v8, v11

    if-eq v11, v3, :cond_f

    const/4 v11, 0x1

    aget v11, v8, v11

    if-ne v11, v3, :cond_12

    goto :goto_a

    .line 232
    :cond_15
    const/4 v11, 0x1

    if-ne v7, v11, :cond_12

    .line 233
    const/4 v11, 0x0

    aget v11, v8, v11

    if-ne v11, v3, :cond_12

    goto :goto_a

    .line 241
    :cond_16
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v11, 0x1090063

    const v12, 0x102017d

    invoke-direct {v1, v6, v11, v12, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 244
    .local v1, arrayAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/LocalePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/android/internal/app/LocalePicker;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0b04c8

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 57
    return-void
.end method

.method public onLocaleSelected(Ljava/util/Locale;)V
    .locals 1
    .parameter "locale"

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 48
    invoke-static {p1}, Lcom/android/OriginalSettings/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 49
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0}, Lcom/android/internal/app/LocalePicker;->onResume()V

    .line 41
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocalePicker;->exchangeLocaleOrder()V

    .line 43
    return-void
.end method
