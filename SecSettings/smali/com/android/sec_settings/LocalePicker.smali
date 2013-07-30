.class public Lcom/android/sec_settings/LocalePicker;
.super Lcom/android/internal/app/LocalePicker;
.source "LocalePicker.java"

# interfaces
.implements Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/internal/app/LocalePicker;-><init>()V

    .line 29
    invoke-virtual {p0, p0}, Lcom/android/sec_settings/LocalePicker;->setLocaleSelectionListener(Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;)V

    .line 30
    return-void
.end method


# virtual methods
.method public exchangeLocaleOrder()V
    .locals 13

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/sec_settings/LocalePicker;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 52
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    if-nez v0, :cond_0

    .line 144
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    .line 58
    .local v2, finalSize:I
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 60
    .local v6, mContext:Landroid/content/Context;
    new-array v5, v2, [Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 61
    .local v5, localeInfos:[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    new-array v10, v2, [Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 63
    .local v10, mTempLocales:[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 64
    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    aput-object v11, v10, v3

    .line 63
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 66
    :cond_1
    invoke-static {v10}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 68
    const-string v11, "CHN"

    const-string v12, "ro.csc.sales_code"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "CHM"

    const-string v12, "ro.csc.sales_code"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "CHU"

    const-string v12, "ro.csc.sales_code"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "CTC"

    const-string v12, "ro.csc.sales_code"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 72
    :cond_2
    const/4 v11, 0x4

    new-array v9, v11, [Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 73
    .local v9, mFindLocales:[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    const/4 v11, 0x4

    new-array v8, v11, [I

    .line 74
    .local v8, mFindIndexs:[I
    const/4 v7, 0x0

    .line 77
    .local v7, mFindCounts:I
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_3

    .line 78
    aget-object v11, v10, v3

    invoke-virtual {v11}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "zh_CN"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 79
    aget-object v11, v10, v3

    aput-object v11, v9, v7

    .line 80
    aput v3, v8, v7

    .line 81
    add-int/lit8 v7, v7, 0x1

    .line 86
    :cond_3
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_4

    .line 87
    aget-object v11, v10, v3

    invoke-virtual {v11}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "en_US"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 88
    aget-object v11, v10, v3

    aput-object v11, v9, v7

    .line 89
    aput v3, v8, v7

    .line 90
    add-int/lit8 v7, v7, 0x1

    .line 95
    :cond_4
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_5

    .line 96
    aget-object v11, v10, v3

    invoke-virtual {v11}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "en_GB"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 97
    aget-object v11, v10, v3

    aput-object v11, v9, v7

    .line 98
    aput v3, v8, v7

    .line 99
    add-int/lit8 v7, v7, 0x1

    .line 104
    :cond_5
    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_6

    .line 105
    aget-object v11, v10, v3

    invoke-virtual {v11}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "ko_KR"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 106
    aget-object v11, v10, v3

    aput-object v11, v9, v7

    .line 107
    aput v3, v8, v7

    .line 108
    add-int/lit8 v7, v7, 0x1

    .line 117
    :cond_6
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v9, v11, v5, v12, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    move v4, v7

    .line 121
    .local v4, j:I
    const/4 v3, 0x0

    :goto_6
    if-ge v3, v2, :cond_10

    .line 122
    const/4 v11, 0x4

    if-ne v7, v11, :cond_c

    .line 123
    const/4 v11, 0x0

    aget v11, v8, v11

    if-eq v11, v3, :cond_7

    const/4 v11, 0x1

    aget v11, v8, v11

    if-eq v11, v3, :cond_7

    const/4 v11, 0x2

    aget v11, v8, v11

    if-eq v11, v3, :cond_7

    const/4 v11, 0x3

    aget v11, v8, v11

    if-ne v11, v3, :cond_d

    .line 121
    :cond_7
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 77
    .end local v4           #j:I
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 86
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 95
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 104
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 125
    .restart local v4       #j:I
    :cond_c
    const/4 v11, 0x3

    if-ne v7, v11, :cond_e

    .line 126
    const/4 v11, 0x0

    aget v11, v8, v11

    if-eq v11, v3, :cond_7

    const/4 v11, 0x1

    aget v11, v8, v11

    if-eq v11, v3, :cond_7

    const/4 v11, 0x2

    aget v11, v8, v11

    if-eq v11, v3, :cond_7

    .line 135
    :cond_d
    aget-object v11, v10, v3

    aput-object v11, v5, v4

    .line 136
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 128
    :cond_e
    const/4 v11, 0x2

    if-ne v7, v11, :cond_f

    .line 129
    const/4 v11, 0x0

    aget v11, v8, v11

    if-eq v11, v3, :cond_7

    const/4 v11, 0x1

    aget v11, v8, v11

    if-ne v11, v3, :cond_d

    goto :goto_7

    .line 131
    :cond_f
    const/4 v11, 0x1

    if-ne v7, v11, :cond_d

    .line 132
    const/4 v11, 0x0

    aget v11, v8, v11

    if-ne v11, v3, :cond_d

    goto :goto_7

    .line 140
    .end local v4           #j:I
    .end local v7           #mFindCounts:I
    .end local v8           #mFindIndexs:[I
    .end local v9           #mFindLocales:[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :cond_10
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v11, 0x109009b

    const v12, 0x102018a

    invoke-direct {v1, v6, v11, v12, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 143
    .local v1, arrayAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    invoke-virtual {p0, v1}, Lcom/android/sec_settings/LocalePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0
.end method

.method public onLocaleSelected(Ljava/util/Locale;)V
    .locals 1
    .parameter "locale"

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/android/sec_settings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 46
    invoke-static {p1}, Lcom/android/sec_settings/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 47
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 34
    invoke-super {p0}, Lcom/android/internal/app/LocalePicker;->onResume()V

    .line 35
    const-string v0, "CHN"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CHM"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CHU"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CTC"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/android/sec_settings/LocalePicker;->exchangeLocaleOrder()V

    .line 41
    :cond_1
    return-void
.end method
