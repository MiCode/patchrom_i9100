.class public Lcom/android/OriginalSettings/ZonePicker;
.super Landroid/app/ListFragment;
.source "ZonePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/ZonePicker$MyComparator;,
        Lcom/android/OriginalSettings/ZonePicker$ZoneSelectionListener;
    }
.end annotation


# instance fields
.field private mAlphabeticalAdapter:Landroid/widget/SimpleAdapter;

.field private mListener:Lcom/android/OriginalSettings/ZonePicker$ZoneSelectionListener;

.field private mSortedByTimezone:Z

.field private mTimezoneSortedAdapter:Landroid/widget/SimpleAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 302
    return-void
.end method

.method private static addItem(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8
    .parameter
    .parameter "id"
    .parameter "displayName"
    .parameter "date"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 253
    .local p0, myData:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 254
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "id"

    invoke-virtual {v0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v6, "name"

    invoke-virtual {v0, v6, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    .line 257
    .local v5, tz:Ljava/util/TimeZone;
    invoke-virtual {v5, p3, p4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    .line 258
    .local v3, offset:I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 259
    .local v4, p:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .local v2, name:Ljava/lang/StringBuilder;
    const-string v6, "GMT"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    if-gez v3, :cond_1

    .line 263
    const/16 v6, 0x2d

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 268
    :goto_0
    const v6, 0x36ee80

    div-int v6, v4, v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 269
    const/16 v6, 0x3a

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 271
    const v6, 0xea60

    div-int v1, v4, v6

    .line 272
    .local v1, min:I
    rem-int/lit8 v1, v1, 0x3c

    .line 274
    const/16 v6, 0xa

    if-ge v1, v6, :cond_0

    .line 275
    const/16 v6, 0x30

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 277
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 279
    const-string v6, "gmt"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    const-string v6, "offset"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    return-void

    .line 265
    .end local v1           #min:I
    :cond_1
    const/16 v6, 0x2b

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static constructTimezoneAdapter(Landroid/content/Context;Z)Landroid/widget/SimpleAdapter;
    .locals 1
    .parameter "context"
    .parameter "sortedByName"

    .prologue
    .line 86
    const v0, 0x1090004

    invoke-static {p0, p1, v0}, Lcom/android/OriginalSettings/ZonePicker;->constructTimezoneAdapter(Landroid/content/Context;ZI)Landroid/widget/SimpleAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static constructTimezoneAdapter(Landroid/content/Context;ZI)Landroid/widget/SimpleAdapter;
    .locals 9
    .parameter "context"
    .parameter "sortedByName"
    .parameter "layoutId"

    .prologue
    const/4 v8, 0x2

    .line 97
    new-array v4, v8, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "name"

    aput-object v3, v4, v1

    const/4 v1, 0x1

    const-string v3, "gmt"

    aput-object v3, v4, v1

    .line 98
    .local v4, from:[Ljava/lang/String;
    new-array v5, v8, [I

    fill-array-data v5, :array_0

    .line 100
    .local v5, to:[I
    if-eqz p1, :cond_0

    const-string v7, "name"

    .line 101
    .local v7, sortKey:Ljava/lang/String;
    :goto_0
    new-instance v6, Lcom/android/OriginalSettings/ZonePicker$MyComparator;

    invoke-direct {v6, v7}, Lcom/android/OriginalSettings/ZonePicker$MyComparator;-><init>(Ljava/lang/String;)V

    .line 102
    .local v6, comparator:Lcom/android/OriginalSettings/ZonePicker$MyComparator;
    invoke-static {p0}, Lcom/android/OriginalSettings/ZonePicker;->getZones(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 103
    .local v2, sortedList:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-static {v2, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 104
    new-instance v0, Landroid/widget/SimpleAdapter;

    move-object v1, p0

    move v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 110
    .local v0, adapter:Landroid/widget/SimpleAdapter;
    return-object v0

    .line 100
    .end local v0           #adapter:Landroid/widget/SimpleAdapter;
    .end local v2           #sortedList:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v6           #comparator:Lcom/android/OriginalSettings/ZonePicker$MyComparator;
    .end local v7           #sortKey:Ljava/lang/String;
    :cond_0
    const-string v7, "offset"

    goto :goto_0

    .line 98
    nop

    :array_0
    .array-data 0x4
        0x14t 0x0t 0x2t 0x1t
        0x15t 0x0t 0x2t 0x1t
    .end array-data
.end method

.method public static getTimeZoneIndex(Landroid/widget/SimpleAdapter;Ljava/util/TimeZone;)I
    .locals 6
    .parameter "adapter"
    .parameter "tz"

    .prologue
    .line 124
    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, defaultId:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/widget/SimpleAdapter;->getCount()I

    move-result v3

    .line 126
    .local v3, listSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 128
    invoke-virtual {p0, v1}, Landroid/widget/SimpleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 129
    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<**>;"
    const-string v5, "id"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 130
    .local v2, id:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 135
    .end local v1           #i:I
    .end local v2           #id:Ljava/lang/String;
    .end local v4           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<**>;"
    :goto_1
    return v1

    .line 126
    .restart local v1       #i:I
    .restart local v2       #id:Ljava/lang/String;
    .restart local v4       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<**>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    .end local v2           #id:Ljava/lang/String;
    .end local v4           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<**>;"
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private static getZones(Landroid/content/Context;)Ljava/util/List;
    .locals 12
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    .line 217
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v5, myData:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 220
    .local v0, date:J
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f05003f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .line 221
    .local v7, xrp:Landroid/content/res/XmlResourceParser;
    :cond_0
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    if-ne v8, v10, :cond_0

    .line 223
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    .line 224
    :goto_0
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v8

    if-eq v8, v11, :cond_5

    .line 225
    :goto_1
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v8

    if-eq v8, v10, :cond_2

    .line 226
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 248
    .end local v7           #xrp:Landroid/content/res/XmlResourceParser;
    :goto_2
    return-object v5

    .line 229
    .restart local v7       #xrp:Landroid/content/res/XmlResourceParser;
    :cond_1
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 242
    .end local v7           #xrp:Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v6

    .line 243
    .local v6, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v8, "ZonePicker"

    const-string v9, "Ill-formatted timezones.xml file"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 231
    .end local v6           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v7       #xrp:Landroid/content/res/XmlResourceParser;
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "timezone"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 232
    const/4 v8, 0x0

    invoke-interface {v7, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 233
    .local v3, id:Ljava/lang/String;
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, displayName:Ljava/lang/String;
    invoke-static {v5, v3, v2, v0, v1}, Lcom/android/OriginalSettings/ZonePicker;->addItem(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;J)V

    .line 236
    .end local v2           #displayName:Ljava/lang/String;
    .end local v3           #id:Ljava/lang/String;
    :cond_3
    :goto_3
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v8

    if-eq v8, v11, :cond_4

    .line 237
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 244
    .end local v7           #xrp:Landroid/content/res/XmlResourceParser;
    :catch_1
    move-exception v4

    .line 245
    .local v4, ioe:Ljava/io/IOException;
    const-string v8, "ZonePicker"

    const-string v9, "Unable to read timezones.xml file"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 239
    .end local v4           #ioe:Ljava/io/IOException;
    .restart local v7       #xrp:Landroid/content/res/XmlResourceParser;
    :cond_4
    :try_start_2
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    goto :goto_0

    .line 241
    :cond_5
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2
.end method

.method public static obtainTimeZoneFromItem(Ljava/lang/Object;)Ljava/util/TimeZone;
    .locals 1
    .parameter "item"

    .prologue
    .line 144
    check-cast p0, Ljava/util/Map;

    .end local p0
    const-string v0, "id"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method private setSorting(Z)V
    .locals 3
    .parameter "sortByTimezone"

    .prologue
    .line 206
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/OriginalSettings/ZonePicker;->mTimezoneSortedAdapter:Landroid/widget/SimpleAdapter;

    .line 208
    .local v0, adapter:Landroid/widget/SimpleAdapter;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/ZonePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 209
    iput-boolean p1, p0, Lcom/android/OriginalSettings/ZonePicker;->mSortedByTimezone:Z

    .line 210
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/OriginalSettings/ZonePicker;->getTimeZoneIndex(Landroid/widget/SimpleAdapter;Ljava/util/TimeZone;)I

    move-result v1

    .line 211
    .local v1, defaultIndex:I
    if-ltz v1, :cond_0

    .line 212
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/ZonePicker;->setSelection(I)V

    .line 214
    :cond_0
    return-void

    .line 206
    .end local v0           #adapter:Landroid/widget/SimpleAdapter;
    .end local v1           #defaultIndex:I
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/ZonePicker;->mAlphabeticalAdapter:Landroid/widget/SimpleAdapter;

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanseState"

    .prologue
    const/4 v2, 0x1

    .line 149
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 151
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 152
    .local v0, activity:Landroid/app/Activity;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/OriginalSettings/ZonePicker;->constructTimezoneAdapter(Landroid/content/Context;Z)Landroid/widget/SimpleAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/ZonePicker;->mTimezoneSortedAdapter:Landroid/widget/SimpleAdapter;

    .line 153
    invoke-static {v0, v2}, Lcom/android/OriginalSettings/ZonePicker;->constructTimezoneAdapter(Landroid/content/Context;Z)Landroid/widget/SimpleAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/ZonePicker;->mAlphabeticalAdapter:Landroid/widget/SimpleAdapter;

    .line 156
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/ZonePicker;->setSorting(Z)V

    .line 157
    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/ZonePicker;->setHasOptionsMenu(Z)V

    .line 160
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0b0191

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 162
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 166
    const/4 v0, 0x1

    const v1, 0x7f0b0194

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108009c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 168
    const/4 v0, 0x2

    const v1, 0x7f0b0195

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020064

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 170
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 171
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .parameter "listView"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 287
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 288
    .local v2, map:Ljava/util/Map;,"Ljava/util/Map<**>;"
    const-string v5, "id"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 291
    .local v4, tzId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 292
    .local v0, activity:Landroid/app/Activity;
    const-string v5, "alarm"

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 293
    .local v1, alarm:Landroid/app/AlarmManager;
    invoke-virtual {v1, v4}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 294
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 295
    .local v3, tz:Ljava/util/TimeZone;
    iget-object v5, p0, Lcom/android/OriginalSettings/ZonePicker;->mListener:Lcom/android/OriginalSettings/ZonePicker$ZoneSelectionListener;

    if-eqz v5, :cond_0

    .line 296
    iget-object v5, p0, Lcom/android/OriginalSettings/ZonePicker;->mListener:Lcom/android/OriginalSettings/ZonePicker$ZoneSelectionListener;

    invoke-interface {v5, v3}, Lcom/android/OriginalSettings/ZonePicker$ZoneSelectionListener;->onZoneSelected(Ljava/util/TimeZone;)V

    .line 300
    :goto_0
    return-void

    .line 298
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 186
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 197
    :goto_0
    return v0

    .line 189
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/ZonePicker;->setSorting(Z)V

    goto :goto_0

    .line 193
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/ZonePicker;->setSorting(Z)V

    goto :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 175
    iget-boolean v0, p0, Lcom/android/OriginalSettings/ZonePicker;->mSortedByTimezone:Z

    if-eqz v0, :cond_0

    .line 176
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 177
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 182
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 180
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method
