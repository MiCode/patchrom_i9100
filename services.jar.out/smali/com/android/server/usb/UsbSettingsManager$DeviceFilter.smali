.class Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
.super Ljava/lang/Object;
.source "UsbSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbSettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeviceFilter"
.end annotation


# instance fields
.field public final mClass:I

.field public final mProductId:I

.field public final mProtocol:I

.field public final mSubclass:I

.field public final mVendorId:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0
    .parameter "vid"
    .parameter "pid"
    .parameter "clasz"
    .parameter "subclass"
    .parameter "protocol"

    .prologue
    .line 106
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput p1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    .line 108
    iput p2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    .line 109
    iput p3, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    .line 110
    iput p4, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    .line 111
    iput p5, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .locals 1
    .parameter "device"

    .prologue
    .line 114
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    .line 116
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    .line 117
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    .line 118
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    .line 119
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceProtocol()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    .line 120
    return-void
.end method

.method private matches(III)Z
    .locals 2
    .parameter "clasz"
    .parameter "subclass"
    .parameter "protocol"

    .prologue
    const/4 v1, -0x1

    .line 173
    iget v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    if-ne p1, v0, :cond_3

    :cond_0
    iget v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    if-ne p2, v0, :cond_3

    :cond_1
    iget v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    if-ne p3, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    .locals 10
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    const/4 v1, -0x1

    .line 125
    .local v1, vendorId:I
    const/4 v2, -0x1

    .line 126
    .local v2, productId:I
    const/4 v3, -0x1

    .line 127
    .local v3, deviceClass:I
    const/4 v4, -0x1

    .line 128
    .local v4, deviceSubclass:I
    const/4 v5, -0x1

    .line 130
    .local v5, deviceProtocol:I
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    .line 131
    .local v6, count:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v6, :cond_5

    .line 132
    invoke-interface {p0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v8

    .line 134
    .local v8, name:Ljava/lang/String;
    invoke-interface {p0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 136
    .local v9, value:I
    const-string v0, "vendor-id"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    move v1, v9

    .line 131
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 138
    :cond_1
    const-string v0, "product-id"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    move v2, v9

    goto :goto_1

    .line 140
    :cond_2
    const-string v0, "class"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 141
    move v3, v9

    goto :goto_1

    .line 142
    :cond_3
    const-string v0, "subclass"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 143
    move v4, v9

    goto :goto_1

    .line 144
    :cond_4
    const-string v0, "protocol"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    move v5, v9

    goto :goto_1

    .line 148
    .end local v8           #name:Ljava/lang/String;
    .end local v9           #value:I
    :cond_5
    new-instance v0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;-><init>(IIIII)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 208
    iget v4, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    if-ne v4, v5, :cond_2

    :cond_0
    move v2, v3

    .line 228
    :cond_1
    :goto_0
    return v2

    .line 212
    :cond_2
    instance-of v4, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    if-eqz v4, :cond_4

    move-object v1, p1

    .line 213
    check-cast v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    .line 214
    .local v1, filter:Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    iget v4, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    iget v5, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    if-ne v4, v5, :cond_3

    iget v4, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    iget v5, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    if-ne v4, v5, :cond_3

    iget v4, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    iget v5, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    if-ne v4, v5, :cond_3

    iget v4, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    iget v5, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    if-ne v4, v5, :cond_3

    iget v4, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    iget v5, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    if-eq v4, v5, :cond_1

    :cond_3
    move v2, v3

    goto :goto_0

    .line 220
    .end local v1           #filter:Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    :cond_4
    instance-of v4, p1, Landroid/hardware/usb/UsbDevice;

    if-eqz v4, :cond_6

    move-object v0, p1

    .line 221
    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 222
    .local v0, device:Landroid/hardware/usb/UsbDevice;
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v4

    iget v5, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    if-ne v4, v5, :cond_5

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v4

    iget v5, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    if-ne v4, v5, :cond_5

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v4

    iget v5, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    if-ne v4, v5, :cond_5

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    move-result v4

    iget v5, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    if-ne v4, v5, :cond_5

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceProtocol()I

    move-result v4

    iget v5, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    if-eq v4, v5, :cond_1

    :cond_5
    move v2, v3

    goto :goto_0

    .end local v0           #device:Landroid/hardware/usb/UsbDevice;
    :cond_6
    move v2, v3

    .line 228
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 233
    iget v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    or-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    shl-int/lit8 v1, v1, 0x10

    iget v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public matches(Landroid/hardware/usb/UsbDevice;)Z
    .locals 8
    .parameter "device"

    .prologue
    const/4 v4, 0x1

    const/4 v7, -0x1

    const/4 v3, 0x0

    .line 179
    iget v5, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    if-eq v5, v7, :cond_1

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v5

    iget v6, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    if-eq v5, v6, :cond_1

    .line 194
    :cond_0
    :goto_0
    return v3

    .line 180
    :cond_1
    iget v5, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    if-eq v5, v7, :cond_2

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v5

    iget v6, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    if-ne v5, v6, :cond_0

    .line 183
    :cond_2
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v5

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    move-result v6

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceProtocol()I

    move-result v7

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->matches(III)Z

    move-result v5

    if-eqz v5, :cond_3

    move v3, v4

    .line 184
    goto :goto_0

    .line 187
    :cond_3
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v0

    .line 188
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 189
    invoke-virtual {p1, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v2

    .line 190
    .local v2, intf:Landroid/hardware/usb/UsbInterface;
    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v5

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v6

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v7

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->matches(III)Z

    move-result v5

    if-eqz v5, :cond_4

    move v3, v4

    .line 191
    goto :goto_0

    .line 188
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public matches(Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;)Z
    .locals 4
    .parameter "f"

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 198
    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    if-eq v1, v3, :cond_1

    iget v1, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    iget v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    if-eq v1, v2, :cond_1

    .line 202
    :cond_0
    :goto_0
    return v0

    .line 199
    :cond_1
    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    if-eq v1, v3, :cond_2

    iget v1, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    iget v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    if-ne v1, v2, :cond_0

    .line 202
    :cond_2
    iget v0, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    iget v1, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    iget v2, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->matches(III)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceFilter[mVendorId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mProductId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mSubclass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mProtocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 153
    const-string v0, "usb-device"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 154
    iget v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    if-eq v0, v3, :cond_0

    .line 155
    const-string v0, "vendor-id"

    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 157
    :cond_0
    iget v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    if-eq v0, v3, :cond_1

    .line 158
    const-string v0, "product-id"

    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 160
    :cond_1
    iget v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    if-eq v0, v3, :cond_2

    .line 161
    const-string v0, "class"

    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 163
    :cond_2
    iget v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    if-eq v0, v3, :cond_3

    .line 164
    const-string v0, "subclass"

    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 166
    :cond_3
    iget v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    if-eq v0, v3, :cond_4

    .line 167
    const-string v0, "protocol"

    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 169
    :cond_4
    const-string v0, "usb-device"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 170
    return-void
.end method
