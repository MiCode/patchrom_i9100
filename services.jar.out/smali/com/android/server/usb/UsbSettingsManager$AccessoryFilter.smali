.class Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
.super Ljava/lang/Object;
.source "UsbSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbSettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccessoryFilter"
.end annotation


# instance fields
.field public final mManufacturer:Ljava/lang/String;

.field public final mModel:Ljava/lang/String;

.field public final mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbAccessory;)V
    .locals 1
    .parameter "accessory"

    .prologue
    .line 263
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 264
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    .line 265
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    .line 266
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    .line 267
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "manufacturer"
    .parameter "model"
    .parameter "version"

    .prologue
    .line 257
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 258
    iput-object p1, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    .line 259
    iput-object p2, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    .line 260
    iput-object p3, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    .line 261
    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    .locals 8
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    const/4 v2, 0x0

    .line 272
    .local v2, manufacturer:Ljava/lang/String;
    const/4 v3, 0x0

    .line 273
    .local v3, model:Ljava/lang/String;
    const/4 v6, 0x0

    .line 275
    .local v6, version:Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 276
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 277
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    .line 278
    .local v4, name:Ljava/lang/String;
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 280
    .local v5, value:Ljava/lang/String;
    const-string v7, "manufacturer"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 281
    move-object v2, v5

    .line 276
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 282
    :cond_1
    const-string v7, "model"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 283
    move-object v3, v5

    goto :goto_1

    .line 284
    :cond_2
    const-string v7, "version"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 285
    move-object v6, v5

    goto :goto_1

    .line 288
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    :cond_3
    new-instance v7, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    invoke-direct {v7, v2, v3, v6}, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 322
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    if-nez v4, :cond_2

    :cond_0
    move v2, v3

    .line 337
    :cond_1
    :goto_0
    return v2

    .line 325
    :cond_2
    instance-of v4, p1, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    if-eqz v4, :cond_4

    move-object v1, p1

    .line 326
    check-cast v1, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    .line 327
    .local v1, filter:Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_3
    move v2, v3

    goto :goto_0

    .line 331
    .end local v1           #filter:Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    :cond_4
    instance-of v4, p1, Landroid/hardware/usb/UsbAccessory;

    if-eqz v4, :cond_6

    move-object v0, p1

    .line 332
    check-cast v0, Landroid/hardware/usb/UsbAccessory;

    .line 333
    .local v0, accessory:Landroid/hardware/usb/UsbAccessory;
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_5
    move v2, v3

    goto :goto_0

    .end local v0           #accessory:Landroid/hardware/usb/UsbAccessory;
    :cond_6
    move v2, v3

    .line 337
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 342
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    :goto_1
    xor-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    if-nez v2, :cond_2

    :goto_2
    xor-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public matches(Landroid/hardware/usb/UsbAccessory;)Z
    .locals 3
    .parameter "acc"

    .prologue
    const/4 v0, 0x0

    .line 306
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 309
    :cond_0
    :goto_0
    return v0

    .line 307
    :cond_1
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    :cond_2
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public matches(Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;)Z
    .locals 3
    .parameter "f"

    .prologue
    const/4 v0, 0x0

    .line 313
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 316
    :cond_0
    :goto_0
    return v0

    .line 314
    :cond_1
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    :cond_2
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccessoryFilter[mManufacturer=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", mModel=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", mVersion=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 292
    const-string v0, "usb-accessory"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 293
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 294
    const-string v0, "manufacturer"

    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 297
    const-string v0, "model"

    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 300
    const-string v0, "version"

    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 302
    :cond_2
    const-string v0, "usb-accessory"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 303
    return-void
.end method
