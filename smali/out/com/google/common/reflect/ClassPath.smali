.class public final Lcom/google/common/reflect/ClassPath;
.super Ljava/lang/Object;
.source "ClassPath.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/reflect/ClassPath$ClassInfo;,
        Lcom/google/common/reflect/ClassPath$ResourceInfo;
    }
.end annotation


# static fields
.field private static final CLASS_FILE_NAME_EXTENSION:Ljava/lang/String; = ".class"

.field private static final CLASS_PATH_ATTRIBUTE_SEPARATOR:Lcom/google/common/base/Splitter;

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final resources:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Lcom/google/common/reflect/ClassPath$ResourceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    const-class v0, Lcom/google/common/reflect/ClassPath;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/reflect/ClassPath;->logger:Ljava/util/logging/Logger;

    .line 58
    const-string v0, " "

    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(Ljava/lang/String;)Lcom/google/common/base/Splitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Splitter;->omitEmptyStrings()Lcom/google/common/base/Splitter;

    move-result-object v0

    sput-object v0, Lcom/google/common/reflect/ClassPath;->CLASS_PATH_ATTRIBUTE_SEPARATOR:Lcom/google/common/base/Splitter;

    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/ImmutableSet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Lcom/google/common/reflect/ClassPath$ResourceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "resources":Lcom/google/common/collect/ImmutableSet;, "Lcom/google/common/collect/ImmutableSet<Lcom/google/common/reflect/ClassPath$ResourceInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/google/common/reflect/ClassPath;->resources:Lcom/google/common/collect/ImmutableSet;

    .line 67
    return-void
.end method

.method private static browse(Ljava/net/URI;Ljava/lang/ClassLoader;Lcom/google/common/collect/ImmutableSet$Builder;)V
    .registers 5
    .param p0, "uri"    # Ljava/net/URI;
    .param p1, "classloader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/ClassLoader;",
            "Lcom/google/common/collect/ImmutableSet$Builder",
            "<",
            "Lcom/google/common/reflect/ClassPath$ResourceInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    .local p2, "resources":Lcom/google/common/collect/ImmutableSet$Builder;, "Lcom/google/common/collect/ImmutableSet$Builder<Lcom/google/common/reflect/ClassPath$ResourceInfo;>;"
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 265
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-static {v0, p1, p2}, Lcom/google/common/reflect/ClassPath;->browseFrom(Ljava/io/File;Ljava/lang/ClassLoader;Lcom/google/common/collect/ImmutableSet$Builder;)V

    .line 267
    :cond_14
    return-void
.end method

.method private static browseDirectory(Ljava/io/File;Ljava/lang/ClassLoader;Lcom/google/common/collect/ImmutableSet$Builder;)V
    .registers 4
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "classloader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/ClassLoader;",
            "Lcom/google/common/collect/ImmutableSet$Builder",
            "<",
            "Lcom/google/common/reflect/ClassPath$ResourceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p2, "resources":Lcom/google/common/collect/ImmutableSet$Builder;, "Lcom/google/common/collect/ImmutableSet$Builder<Lcom/google/common/reflect/ClassPath$ResourceInfo;>;"
    const-string v0, ""

    invoke-static {p0, p1, v0, p2}, Lcom/google/common/reflect/ClassPath;->browseDirectory(Ljava/io/File;Ljava/lang/ClassLoader;Ljava/lang/String;Lcom/google/common/collect/ImmutableSet$Builder;)V

    .line 285
    return-void
.end method

.method private static browseDirectory(Ljava/io/File;Ljava/lang/ClassLoader;Ljava/lang/String;Lcom/google/common/collect/ImmutableSet$Builder;)V
    .registers 12
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "classloader"    # Ljava/lang/ClassLoader;
    .param p2, "packagePrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/ImmutableSet$Builder",
            "<",
            "Lcom/google/common/reflect/ClassPath$ResourceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 290
    .local p3, "resources":Lcom/google/common/collect/ImmutableSet$Builder;, "Lcom/google/common/collect/ImmutableSet$Builder<Lcom/google/common/reflect/ClassPath$ResourceInfo;>;"
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_6
    if-ge v2, v3, :cond_4a

    aget-object v1, v0, v2

    .line 291
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 292
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_31

    .line 293
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, p1, v6, p3}, Lcom/google/common/reflect/ClassPath;->browseDirectory(Ljava/io/File;Ljava/lang/ClassLoader;Ljava/lang/String;Lcom/google/common/collect/ImmutableSet$Builder;)V

    .line 290
    :goto_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 295
    :cond_31
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 296
    .local v5, "resourceName":Ljava/lang/String;
    invoke-static {v5, p1}, Lcom/google/common/reflect/ClassPath$ResourceInfo;->of(Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/google/common/reflect/ClassPath$ResourceInfo;

    move-result-object v6

    invoke-virtual {p3, v6}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    goto :goto_2e

    .line 299
    .end local v1    # "f":Ljava/io/File;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "resourceName":Ljava/lang/String;
    :cond_4a
    return-void
.end method

.method static browseFrom(Ljava/io/File;Ljava/lang/ClassLoader;Lcom/google/common/collect/ImmutableSet$Builder;)V
    .registers 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "classloader"    # Ljava/lang/ClassLoader;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/ClassLoader;",
            "Lcom/google/common/collect/ImmutableSet$Builder",
            "<",
            "Lcom/google/common/reflect/ClassPath$ResourceInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    .local p2, "resources":Lcom/google/common/collect/ImmutableSet$Builder;, "Lcom/google/common/collect/ImmutableSet$Builder<Lcom/google/common/reflect/ClassPath$ResourceInfo;>;"
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    .line 280
    :goto_6
    return-void

    .line 275
    :cond_7
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 276
    invoke-static {p0, p1, p2}, Lcom/google/common/reflect/ClassPath;->browseDirectory(Ljava/io/File;Ljava/lang/ClassLoader;Lcom/google/common/collect/ImmutableSet$Builder;)V

    goto :goto_6

    .line 278
    :cond_11
    invoke-static {p0, p1, p2}, Lcom/google/common/reflect/ClassPath;->browseJar(Ljava/io/File;Ljava/lang/ClassLoader;Lcom/google/common/collect/ImmutableSet$Builder;)V

    goto :goto_6
.end method

.method private static browseJar(Ljava/io/File;Ljava/lang/ClassLoader;Lcom/google/common/collect/ImmutableSet$Builder;)V
    .registers 11
    .param p0, "file"    # Ljava/io/File;
    .param p1, "classloader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/ClassLoader;",
            "Lcom/google/common/collect/ImmutableSet$Builder",
            "<",
            "Lcom/google/common/reflect/ClassPath$ResourceInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    .local p2, "resources":Lcom/google/common/collect/ImmutableSet$Builder;, "Lcom/google/common/collect/ImmutableSet$Builder<Lcom/google/common/reflect/ClassPath$ResourceInfo;>;"
    :try_start_0
    new-instance v4, Ljava/util/jar/JarFile;

    invoke-direct {v4, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_26

    .line 312
    .local v4, "jarFile":Ljava/util/jar/JarFile;
    :try_start_5
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/google/common/reflect/ClassPath;->getClassPathFromManifest(Ljava/io/File;Ljava/util/jar/Manifest;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_28

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/URI;

    .line 313
    .local v5, "uri":Ljava/net/URI;
    invoke-static {v5, p1, p2}, Lcom/google/common/reflect/ClassPath;->browse(Ljava/net/URI;Ljava/lang/ClassLoader;Lcom/google/common/collect/ImmutableSet$Builder;)V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    goto :goto_11

    .line 324
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "uri":Ljava/net/URI;
    :catchall_21
    move-exception v6

    .line 325
    :try_start_22
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_5c

    .line 326
    :goto_25
    throw v6

    .line 307
    .end local v4    # "jarFile":Ljava/util/jar/JarFile;
    :catch_26
    move-exception v0

    .line 328
    :goto_27
    return-void

    .line 315
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "jarFile":Ljava/util/jar/JarFile;
    :cond_28
    :try_start_28
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 316
    .local v1, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :cond_2c
    :goto_2c
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_56

    .line 317
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/jar/JarEntry;

    .line 318
    .local v2, "entry":Ljava/util/jar/JarEntry;
    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_2c

    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "META-INF/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2c

    .line 321
    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/google/common/reflect/ClassPath$ResourceInfo;->of(Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/google/common/reflect/ClassPath$ResourceInfo;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;
    :try_end_55
    .catchall {:try_start_28 .. :try_end_55} :catchall_21

    goto :goto_2c

    .line 325
    .end local v2    # "entry":Ljava/util/jar/JarEntry;
    :cond_56
    :try_start_56
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5a

    goto :goto_27

    .line 326
    :catch_5a
    move-exception v6

    goto :goto_27

    .end local v1    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_5c
    move-exception v7

    goto :goto_25
.end method

.method public static from(Ljava/lang/ClassLoader;)Lcom/google/common/reflect/ClassPath;
    .registers 6
    .param p0, "classloader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    new-instance v2, Lcom/google/common/collect/ImmutableSortedSet$Builder;

    invoke-static {}, Lcom/google/common/collect/Ordering;->usingToString()Lcom/google/common/collect/Ordering;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/common/collect/ImmutableSortedSet$Builder;-><init>(Ljava/util/Comparator;)V

    .line 81
    .local v2, "resources":Lcom/google/common/collect/ImmutableSortedSet$Builder;, "Lcom/google/common/collect/ImmutableSortedSet$Builder<Lcom/google/common/reflect/ClassPath$ResourceInfo;>;"
    invoke-static {p0}, Lcom/google/common/reflect/ClassPath;->getClassPathEntries(Ljava/lang/ClassLoader;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 82
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/URI;Ljava/lang/ClassLoader;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/URI;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ClassLoader;

    invoke-static {v3, v4, v2}, Lcom/google/common/reflect/ClassPath;->browse(Ljava/net/URI;Ljava/lang/ClassLoader;Lcom/google/common/collect/ImmutableSet$Builder;)V

    goto :goto_15

    .line 84
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/URI;Ljava/lang/ClassLoader;>;"
    :cond_31
    new-instance v3, Lcom/google/common/reflect/ClassPath;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->build()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/common/reflect/ClassPath;-><init>(Lcom/google/common/collect/ImmutableSet;)V

    return-object v3
.end method

.method static getClassName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "filename"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 376
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, ".class"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v0, v1, v2

    .line 377
    .local v0, "classNameEnd":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    const/16 v3, 0x2e

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static getClassPathEntries(Ljava/lang/ClassLoader;)Lcom/google/common/collect/ImmutableMap;
    .registers 11
    .param p0, "classloader"    # Ljava/lang/ClassLoader;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/net/URI;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 240
    .local v2, "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/net/URI;Ljava/lang/ClassLoader;>;"
    invoke-virtual {p0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 241
    .local v6, "parent":Ljava/lang/ClassLoader;
    if-eqz v6, :cond_11

    .line 242
    invoke-static {v6}, Lcom/google/common/reflect/ClassPath;->getClassPathEntries(Ljava/lang/ClassLoader;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 244
    :cond_11
    instance-of v9, p0, Ljava/net/URLClassLoader;

    if-eqz v9, :cond_39

    move-object v8, p0

    .line 245
    check-cast v8, Ljava/net/URLClassLoader;

    .line 246
    .local v8, "urlClassLoader":Ljava/net/URLClassLoader;
    invoke-virtual {v8}, Ljava/net/URLClassLoader;->getURLs()[Ljava/net/URL;

    move-result-object v0

    .local v0, "arr$":[Ljava/net/URL;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1e
    if-ge v4, v5, :cond_39

    aget-object v3, v0, v4

    .line 249
    .local v3, "entry":Ljava/net/URL;
    :try_start_22
    invoke-virtual {v3}, Ljava/net/URL;->toURI()Ljava/net/URI;
    :try_end_25
    .catch Ljava/net/URISyntaxException; {:try_start_22 .. :try_end_25} :catch_32

    move-result-object v7

    .line 253
    .local v7, "uri":Ljava/net/URI;
    invoke-virtual {v2, v7}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2f

    .line 254
    invoke-virtual {v2, v7, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    :cond_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 250
    .end local v7    # "uri":Ljava/net/URI;
    :catch_32
    move-exception v1

    .line 251
    .local v1, "e":Ljava/net/URISyntaxException;
    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-direct {v9, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 258
    .end local v0    # "arr$":[Ljava/net/URL;
    .end local v1    # "e":Ljava/net/URISyntaxException;
    .end local v3    # "entry":Ljava/net/URL;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v8    # "urlClassLoader":Ljava/net/URLClassLoader;
    :cond_39
    invoke-static {v2}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v9

    return-object v9
.end method

.method static getClassPathEntry(Ljava/io/File;Ljava/lang/String;)Ljava/net/URI;
    .registers 7
    .param p0, "jarFile"    # Ljava/io/File;
    .param p1, "path"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 367
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 368
    .local v0, "uri":Ljava/net/URI;
    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 371
    .end local v0    # "uri":Ljava/net/URI;
    :goto_b
    return-object v0

    .restart local v0    # "uri":Ljava/net/URI;
    :cond_c
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    const/16 v3, 0x2f

    sget-char v4, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    goto :goto_b
.end method

.method static getClassPathFromManifest(Ljava/io/File;Ljava/util/jar/Manifest;)Lcom/google/common/collect/ImmutableSet;
    .registers 11
    .param p0, "jarFile"    # Ljava/io/File;
    .param p1, "manifest"    # Ljava/util/jar/Manifest;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/jar/Manifest;",
            ")",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation

    .prologue
    .line 338
    if-nez p1, :cond_7

    .line 339
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v6

    .line 356
    :goto_6
    return-object v6

    .line 341
    :cond_7
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 342
    .local v0, "builder":Lcom/google/common/collect/ImmutableSet$Builder;, "Lcom/google/common/collect/ImmutableSet$Builder<Ljava/net/URI;>;"
    invoke-virtual {p1}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v6

    const-string v7, "Class-Path"

    invoke-virtual {v6, v7}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 343
    .local v1, "classpathAttribute":Ljava/lang/String;
    if-eqz v1, :cond_4f

    .line 344
    sget-object v6, Lcom/google/common/reflect/ClassPath;->CLASS_PATH_ATTRIBUTE_SEPARATOR:Lcom/google/common/base/Splitter;

    invoke-virtual {v6, v1}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 347
    .local v4, "path":Ljava/lang/String;
    :try_start_2d
    invoke-static {p0, v4}, Lcom/google/common/reflect/ClassPath;->getClassPathEntry(Ljava/io/File;Ljava/lang/String;)Ljava/net/URI;
    :try_end_30
    .catch Ljava/net/URISyntaxException; {:try_start_2d .. :try_end_30} :catch_35

    move-result-object v5

    .line 353
    .local v5, "uri":Ljava/net/URI;
    invoke-virtual {v0, v5}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    goto :goto_21

    .line 348
    .end local v5    # "uri":Ljava/net/URI;
    :catch_35
    move-exception v2

    .line 350
    .local v2, "e":Ljava/net/URISyntaxException;
    sget-object v6, Lcom/google/common/reflect/ClassPath;->logger:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid Class-Path entry: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_21

    .line 356
    .end local v2    # "e":Ljava/net/URISyntaxException;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "path":Ljava/lang/String;
    :cond_4f
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v6

    goto :goto_6
.end method


# virtual methods
.method public getResources()Lcom/google/common/collect/ImmutableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Lcom/google/common/reflect/ClassPath$ResourceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/common/reflect/ClassPath;->resources:Lcom/google/common/collect/ImmutableSet;

    return-object v0
.end method

.method public getTopLevelClasses()Lcom/google/common/collect/ImmutableSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Lcom/google/common/reflect/ClassPath$ClassInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 98
    .local v0, "builder":Lcom/google/common/collect/ImmutableSet$Builder;, "Lcom/google/common/collect/ImmutableSet$Builder<Lcom/google/common/reflect/ClassPath$ClassInfo;>;"
    iget-object v3, p0, Lcom/google/common/reflect/ClassPath;->resources:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/reflect/ClassPath$ResourceInfo;

    .line 99
    .local v2, "resource":Lcom/google/common/reflect/ClassPath$ResourceInfo;
    instance-of v3, v2, Lcom/google/common/reflect/ClassPath$ClassInfo;

    if-eqz v3, :cond_a

    .line 100
    check-cast v2, Lcom/google/common/reflect/ClassPath$ClassInfo;

    .end local v2    # "resource":Lcom/google/common/reflect/ClassPath$ResourceInfo;
    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    goto :goto_a

    .line 103
    :cond_20
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v3

    return-object v3
.end method

.method public getTopLevelClasses(Ljava/lang/String;)Lcom/google/common/collect/ImmutableSet;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Lcom/google/common/reflect/ClassPath$ClassInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 110
    .local v0, "builder":Lcom/google/common/collect/ImmutableSet$Builder;, "Lcom/google/common/collect/ImmutableSet$Builder<Lcom/google/common/reflect/ClassPath$ClassInfo;>;"
    invoke-virtual {p0}, Lcom/google/common/reflect/ClassPath;->getTopLevelClasses()Lcom/google/common/collect/ImmutableSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/reflect/ClassPath$ClassInfo;

    .line 111
    .local v1, "classInfo":Lcom/google/common/reflect/ClassPath$ClassInfo;
    invoke-virtual {v1}, Lcom/google/common/reflect/ClassPath$ClassInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 112
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    goto :goto_f

    .line 115
    .end local v1    # "classInfo":Lcom/google/common/reflect/ClassPath$ClassInfo;
    :cond_29
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v3

    return-object v3
.end method

.method public getTopLevelClassesRecursive(Ljava/lang/String;)Lcom/google/common/collect/ImmutableSet;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Lcom/google/common/reflect/ClassPath$ClassInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, "packagePrefix":Ljava/lang/String;
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 126
    .local v0, "builder":Lcom/google/common/collect/ImmutableSet$Builder;, "Lcom/google/common/collect/ImmutableSet$Builder<Lcom/google/common/reflect/ClassPath$ClassInfo;>;"
    invoke-virtual {p0}, Lcom/google/common/reflect/ClassPath;->getTopLevelClasses()Lcom/google/common/collect/ImmutableSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_22
    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/reflect/ClassPath$ClassInfo;

    .line 127
    .local v1, "classInfo":Lcom/google/common/reflect/ClassPath$ClassInfo;
    invoke-virtual {v1}, Lcom/google/common/reflect/ClassPath$ClassInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 128
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    goto :goto_22

    .line 131
    .end local v1    # "classInfo":Lcom/google/common/reflect/ClassPath$ClassInfo;
    :cond_3c
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v4

    return-object v4
.end method
