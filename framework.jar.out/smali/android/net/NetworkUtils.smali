.class public Landroid/net/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# static fields
.field public static final RESET_ALL_ADDRESSES:I = 0x3

.field public static final RESET_IPV4_ADDRESSES:I = 0x1

.field public static final RESET_IPV6_ADDRESSES:I = 0x2

.field private static final TAG:Ljava/lang/String; = "NetworkUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDefaultRoute(Ljava/lang/String;Ljava/net/InetAddress;)Z
    .locals 6
    .parameter "interfaceName"
    .parameter "gw"

    .prologue
    const/4 v2, 0x0

    .line 199
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, gwStr:Ljava/lang/String;
    instance-of v3, p1, Ljava/net/Inet4Address;

    if-eqz v3, :cond_1

    .line 202
    const-string v0, "0.0.0.0"

    .line 210
    .local v0, dstStr:Ljava/lang/String;
    :goto_0
    invoke-static {p0, v0, v2, v1}, Landroid/net/NetworkUtils;->addRoute(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    .end local v0           #dstStr:Ljava/lang/String;
    :cond_0
    :goto_1
    return v2

    .line 203
    :cond_1
    instance-of v3, p1, Ljava/net/Inet6Address;

    if-eqz v3, :cond_2

    .line 204
    const-string v0, "::"

    .restart local v0       #dstStr:Ljava/lang/String;
    goto :goto_0

    .line 206
    .end local v0           #dstStr:Ljava/lang/String;
    :cond_2
    const-string v3, "NetworkUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addDefaultRoute failure: address is neither IPv4 nor IPv6("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static addHostRoute(Ljava/lang/String;Ljava/net/InetAddress;Ljava/net/InetAddress;)Z
    .locals 7
    .parameter "interfaceName"
    .parameter "dst"
    .parameter "gw"

    .prologue
    const/4 v3, 0x0

    .line 224
    if-nez p1, :cond_1

    .line 225
    const-string v4, "NetworkUtils"

    const-string v5, "addHostRoute: dst should not be null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    :goto_0
    return v3

    .line 230
    :cond_1
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, dstStr:Ljava/lang/String;
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, gwStr:Ljava/lang/String;
    :goto_1
    instance-of v4, p1, Ljava/net/Inet4Address;

    if-eqz v4, :cond_3

    .line 234
    const/16 v2, 0x20

    .line 242
    .local v2, prefixLength:I
    :goto_2
    invoke-static {p0, v0, v2, v1}, Landroid/net/NetworkUtils;->addRoute(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 231
    .end local v1           #gwStr:Ljava/lang/String;
    .end local v2           #prefixLength:I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 235
    .restart local v1       #gwStr:Ljava/lang/String;
    :cond_3
    instance-of v4, p1, Ljava/net/Inet6Address;

    if-eqz v4, :cond_4

    .line 236
    const/16 v2, 0x80

    .restart local v2       #prefixLength:I
    goto :goto_2

    .line 238
    .end local v2           #prefixLength:I
    :cond_4
    const-string v4, "NetworkUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addHostRoute failure: address is neither IPv4 nor IPv6("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static native addRoute(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
.end method

.method public static addressTypeMatches(Ljava/net/InetAddress;Ljava/net/InetAddress;)Z
    .locals 1
    .parameter "left"
    .parameter "right"

    .prologue
    .line 287
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    instance-of v0, p1, Ljava/net/Inet4Address;

    if-nez v0, :cond_1

    :cond_0
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_2

    instance-of v0, p1, Ljava/net/Inet6Address;

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static native disableInterface(Ljava/lang/String;)I
.end method

.method public static native enableInterface(Ljava/lang/String;)I
.end method

.method public static native getDhcpError()Ljava/lang/String;
.end method

.method public static getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;
    .locals 9
    .parameter "address"
    .parameter "prefixLength"

    .prologue
    .line 251
    if-nez p0, :cond_0

    .line 252
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "getNetworkPart doesn\'t accept null address"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 255
    :cond_0
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 257
    .local v0, array:[B
    if-ltz p1, :cond_1

    array-length v6, v0

    mul-int/lit8 v6, v6, 0x8

    if-le p1, v6, :cond_2

    .line 258
    :cond_1
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "getNetworkPart - bad prefixLength"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 261
    :cond_2
    div-int/lit8 v4, p1, 0x8

    .line 262
    .local v4, offset:I
    rem-int/lit8 v5, p1, 0x8

    .line 263
    .local v5, reminder:I
    const/16 v6, 0xff

    rsub-int/lit8 v7, v5, 0x8

    shl-int/2addr v6, v7

    int-to-byte v2, v6

    .line 265
    .local v2, mask:B
    array-length v6, v0

    if-ge v4, v6, :cond_3

    aget-byte v6, v0, v4

    and-int/2addr v6, v2

    int-to-byte v6, v6

    aput-byte v6, v0, v4

    .line 267
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 269
    :goto_0
    array-length v6, v0

    if-ge v4, v6, :cond_4

    .line 270
    const/4 v6, 0x0

    aput-byte v6, v0, v4

    .line 269
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 273
    :cond_4
    const/4 v3, 0x0

    .line 275
    .local v3, netPart:Ljava/net/InetAddress;
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 279
    return-object v3

    .line 276
    :catch_0
    move-exception v1

    .line 277
    .local v1, e:Ljava/net/UnknownHostException;
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getNetworkPart error - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static hexToInet6Address(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 6
    .parameter "addrHexString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 301
    :try_start_0
    const-string v1, "%s:%s:%s:%s:%s:%s:%s:%s"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/16 v5, 0x8

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0x8

    const/16 v5, 0xc

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const/16 v4, 0xc

    const/16 v5, 0x10

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x10

    const/16 v5, 0x14

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x14

    const/16 v5, 0x18

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const/16 v4, 0x18

    const/16 v5, 0x1c

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const/16 v4, 0x1c

    const/16 v5, 0x20

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "NetworkUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error in hexToInet6Address("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static inetAddressToInt(Ljava/net/InetAddress;)I
    .locals 3
    .parameter "inetAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 148
    .local v0, addr:[B
    array-length v1, v0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 149
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Not an IPv4 address"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    :cond_0
    const/4 v1, 0x3

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const/4 v2, 0x0

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    return v1
.end method

.method public static intToInetAddress(I)Ljava/net/InetAddress;
    .locals 4
    .parameter "hostAddress"

    .prologue
    .line 128
    const/4 v2, 0x4

    new-array v0, v2, [B

    const/4 v2, 0x0

    and-int/lit16 v3, p0, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/4 v2, 0x1

    shr-int/lit8 v3, p0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/4 v2, 0x2

    shr-int/lit8 v3, p0, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/4 v2, 0x3

    shr-int/lit8 v3, p0, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 134
    .local v0, addressBytes:[B
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, e:Ljava/net/UnknownHostException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public static makeStrings(Ljava/util/Collection;)[Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 318
    .local p0, addrs:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 319
    .local v4, result:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 320
    .local v1, i:I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 321
    .local v0, addr:Ljava/net/InetAddress;
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 323
    .end local v0           #addr:Ljava/net/InetAddress;
    :cond_0
    return-object v4
.end method

.method public static netmaskIntToPrefixLength(I)I
    .locals 1
    .parameter "netmask"

    .prologue
    .line 175
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public static numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 1
    .parameter "addrString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-static {p0}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public static prefixLengthToNetmaskInt(I)I
    .locals 3
    .parameter "prefixLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 162
    if-ltz p0, :cond_0

    const/16 v1, 0x20

    if-le p0, v1, :cond_1

    .line 163
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid prefix length (0 <= prefix <= 32)"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 165
    :cond_1
    const/4 v1, -0x1

    rsub-int/lit8 v2, p0, 0x20

    shl-int v0, v1, v2

    .line 166
    .local v0, value:I
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    return v1
.end method

.method public static native releaseDhcpLease(Ljava/lang/String;)Z
.end method

.method public static native removeDefaultRoute(Ljava/lang/String;)I
.end method

.method public static native removeHostRoutes(Ljava/lang/String;)I
.end method

.method public static native resetConnections(Ljava/lang/String;I)I
.end method

.method public static native runDhcp(Ljava/lang/String;Landroid/net/DhcpInfoInternal;)Z
.end method

.method public static native runDhcpRenew(Ljava/lang/String;Landroid/net/DhcpInfoInternal;)Z
.end method

.method public static native stopDhcp(Ljava/lang/String;)Z
.end method

.method public static trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "addr"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    .line 336
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 351
    .end local p0
    .local v3, octets:[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 337
    .end local v3           #octets:[Ljava/lang/String;
    .restart local p0
    :cond_1
    const-string v5, "\\."

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 338
    .restart local v3       #octets:[Ljava/lang/String;
    array-length v5, v3

    if-ne v5, v7, :cond_0

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x10

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 340
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 341
    .local v4, result:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v7, :cond_3

    .line 343
    :try_start_0
    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, v6, :cond_0

    .line 344
    aget-object v5, v3, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    if-ge v2, v6, :cond_2

    const/16 v5, 0x2e

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 341
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 345
    :catch_0
    move-exception v1

    .line 346
    .local v1, e:Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 350
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object p0, v4

    .line 351
    goto :goto_0
.end method