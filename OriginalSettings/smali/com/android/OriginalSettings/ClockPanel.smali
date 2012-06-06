.class public Lcom/android/OriginalSettings/ClockPanel;
.super Landroid/widget/LinearLayout;
.source "ClockPanel.java"


# instance fields
.field private mAM:Landroid/widget/TextView;

.field private mCalendar:Ljava/util/Calendar;

.field private mContext:Landroid/content/Context;

.field private mDate_Month:Landroid/widget/TextView;

.field private mHour01:Landroid/widget/ImageView;

.field private mHour02:Landroid/widget/ImageView;

.field private mMin01:Landroid/widget/ImageView;

.field private mMin02:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    iput-object p1, p0, Lcom/android/OriginalSettings/ClockPanel;->mContext:Landroid/content/Context;

    .line 36
    iget-object v3, p0, Lcom/android/OriginalSettings/ClockPanel;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 37
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f04004c

    const/4 v4, 0x1

    invoke-virtual {v0, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 39
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/ClockPanel;->mCalendar:Ljava/util/Calendar;

    .line 41
    const v3, 0x7f0800d0

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/ClockPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/OriginalSettings/ClockPanel;->mHour01:Landroid/widget/ImageView;

    .line 42
    const v3, 0x7f0800d1

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/ClockPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/OriginalSettings/ClockPanel;->mHour02:Landroid/widget/ImageView;

    .line 43
    const v3, 0x7f0800d3

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/ClockPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/OriginalSettings/ClockPanel;->mMin01:Landroid/widget/ImageView;

    .line 44
    const v3, 0x7f0800d4

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/ClockPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/OriginalSettings/ClockPanel;->mMin02:Landroid/widget/ImageView;

    .line 45
    const v3, 0x7f0800d5

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/ClockPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/ClockPanel;->mAM:Landroid/widget/TextView;

    .line 46
    const v3, 0x7f0800d6

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/ClockPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/ClockPanel;->mDate_Month:Landroid/widget/TextView;

    .line 48
    const v3, 0x7f0800d7

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/ClockPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 49
    .local v2, mWeatherPanel:Landroid/widget/LinearLayout;
    new-instance v1, Lcom/android/OriginalSettings/ClockPanelInfo;

    iget-object v3, p0, Lcom/android/OriginalSettings/ClockPanel;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/OriginalSettings/ClockPanelInfo;-><init>(Landroid/content/Context;)V

    .line 50
    .local v1, mClockPanelInfo:Lcom/android/OriginalSettings/ClockPanelInfo;
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 52
    invoke-direct {p0}, Lcom/android/OriginalSettings/ClockPanel;->refreshTimeAndDate()V

    .line 54
    return-void
.end method

.method private convertTimeToImage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "hourString"
    .parameter "minString"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 85
    const/16 v4, 0xa

    new-array v3, v4, [I

    fill-array-data v3, :array_0

    .line 93
    .local v3, unlock_clock_drawables:[I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    new-array v0, v4, [I

    .line 94
    .local v0, choiceHourNumber:[I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    new-array v1, v4, [I

    .line 95
    .local v1, choiceMinNumber:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 96
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v0, v2

    .line 95
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 99
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v1, v2

    .line 98
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 103
    :cond_1
    aget v4, v0, v7

    if-ne v4, v6, :cond_2

    .line 104
    iget-object v4, p0, Lcom/android/OriginalSettings/ClockPanel;->mHour01:Landroid/widget/ImageView;

    aget v5, v3, v6

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    :goto_2
    iget-object v4, p0, Lcom/android/OriginalSettings/ClockPanel;->mHour02:Landroid/widget/ImageView;

    aget v5, v0, v6

    aget v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    iget-object v4, p0, Lcom/android/OriginalSettings/ClockPanel;->mMin01:Landroid/widget/ImageView;

    aget v5, v1, v7

    aget v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    iget-object v4, p0, Lcom/android/OriginalSettings/ClockPanel;->mMin02:Landroid/widget/ImageView;

    aget v5, v1, v6

    aget v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    return-void

    .line 106
    :cond_2
    iget-object v4, p0, Lcom/android/OriginalSettings/ClockPanel;->mHour01:Landroid/widget/ImageView;

    aget v5, v0, v7

    aget v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 85
    :array_0
    .array-data 0x4
        0x76t 0x7t 0x8t 0x1t
        0x78t 0x7t 0x8t 0x1t
        0x7bt 0x7t 0x8t 0x1t
        0x7dt 0x7t 0x8t 0x1t
        0x7ft 0x7t 0x8t 0x1t
        0x81t 0x7t 0x8t 0x1t
        0x83t 0x7t 0x8t 0x1t
        0x85t 0x7t 0x8t 0x1t
        0x87t 0x7t 0x8t 0x1t
        0x89t 0x7t 0x8t 0x1t
    .end array-data
.end method

.method private refreshTimeAndDate()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 59
    iget-object v5, p0, Lcom/android/OriginalSettings/ClockPanel;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 62
    iget-object v5, p0, Lcom/android/OriginalSettings/ClockPanel;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    if-ne v5, v8, :cond_0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v5, "HH"

    invoke-direct {v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 64
    .local v1, hourFormat:Ljava/text/SimpleDateFormat;
    :goto_0
    iget-object v5, p0, Lcom/android/OriginalSettings/ClockPanel;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, hourString:Ljava/lang/String;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "mm"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 67
    .local v4, minuteFormat:Ljava/text/SimpleDateFormat;
    iget-object v5, p0, Lcom/android/OriginalSettings/ClockPanel;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, minString:Ljava/lang/String;
    invoke-direct {p0, v2, v3}, Lcom/android/OriginalSettings/ClockPanel;->convertTimeToImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v6, p0, Lcom/android/OriginalSettings/ClockPanel;->mAM:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/OriginalSettings/ClockPanel;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    if-ne v5, v8, :cond_1

    const/16 v5, 0x8

    :goto_1
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    iget-object v5, p0, Lcom/android/OriginalSettings/ClockPanel;->mCalendar:Ljava/util/Calendar;

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-nez v5, :cond_2

    .line 74
    iget-object v5, p0, Lcom/android/OriginalSettings/ClockPanel;->mAM:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/OriginalSettings/ClockPanel;->mContext:Landroid/content/Context;

    const v7, 0x1040075

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :goto_2
    iget-object v5, p0, Lcom/android/OriginalSettings/ClockPanel;->mContext:Landroid/content/Context;

    const v6, 0x10400af

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, dateFormat:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/OriginalSettings/ClockPanel;->mDate_Month:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/OriginalSettings/ClockPanel;->mCalendar:Ljava/util/Calendar;

    invoke-static {v0, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    return-void

    .line 62
    .end local v0           #dateFormat:Ljava/lang/String;
    .end local v1           #hourFormat:Ljava/text/SimpleDateFormat;
    .end local v2           #hourString:Ljava/lang/String;
    .end local v3           #minString:Ljava/lang/String;
    .end local v4           #minuteFormat:Ljava/text/SimpleDateFormat;
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v5, "hh"

    invoke-direct {v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    .restart local v1       #hourFormat:Ljava/text/SimpleDateFormat;
    .restart local v2       #hourString:Ljava/lang/String;
    .restart local v3       #minString:Ljava/lang/String;
    .restart local v4       #minuteFormat:Ljava/text/SimpleDateFormat;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 76
    :cond_2
    iget-object v5, p0, Lcom/android/OriginalSettings/ClockPanel;->mAM:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/OriginalSettings/ClockPanel;->mContext:Landroid/content/Context;

    const v7, 0x1040076

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
