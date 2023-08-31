import Foundation

var l = readLine()!.split(separator: " ").map{ Int(String($0))! }

let str = """
            AndroidSVG
            https://github.com/BigBadaboom/androidsvg
            Copyright 2013-2018 Cave Rock Software Ltd
            Apache License 2.0

            coil-svg
            https://github.com/coil-kt/coil
            Copyright 2023 Coil Contributors
            Apache License 2.0

            RecyclerView FastScroll
            https://github.com/timusus/RecyclerView-FastScroll
            Copyright (C) 2016 Tim Malseed
            Apache License 2.0

            OkHttp
            https://github.com/square/okhttp
            Copyright 2019 Square, Inc.
            Apache License 2.0

            ConstraintLayout
            https://mvnrepository.com/artifact/androidx.constraintlayout/constraintlayout/2.1.4
            The Android Open Source Project
            Apache License 2.0

            AppsFlyer OAID
            https://github.com/AppsFlyerSDK/appsflyer-oaid
            Copyright (c) 2020 AppsFlyer Ltd.
            MIT License

            Installreferrer
            https://mvnrepository.com/artifact/com.android.installreferrer/installreferrer/2.2
            Android Software Development Kit License

            Media3 ExoPlayer HLS Module
            https://mvnrepository.com/artifact/androidx.media3/media3-exoplayer-hls/1.1.0
            The Android Open Source Project
            Apache License 2.0

            Logging Interceptor
            https://github.com/square/okhttp
            Copyright 2019 Square, Inc.
            Apache License 2.0

            Hilt Android
            https://github.com/google/dagger
            Apache License 2.0

            Profileinstaller
            https://developer.android.com/jetpack/androidx/releases/profileinstaller
            The Android Open Source Project
            Apache License 2.0

            Media3 DataSource Module
            https://mvnrepository.com/artifact/androidx.media3/media3-datasource/1.1.0
            The Android Open Source Project
            Apache License 2.0

            Media3 ExoPlayer DASH Module
            https://mvnrepository.com/artifact/androidx.media3/media3-exoplayer-dash/1.1.0
            The Android Open Source Project
            Apache License 2.0

            Android Support ExifInterface
            https://developer.android.com/jetpack/androidx/releases/exifinterface
            The Android Open Source Project
            Apache License 2.0

            Android Support Library Loader
            https://mvnrepository.com/artifact/androidx.loader/loader/1.0.0
            The Android Open Source Project
            Apache License 2.0

            Apache HttpClient
            https://github.com/apache/httpcomponents-client
            Copyright (c) 2005 Brian Goetz and Tim Peierls.
            Apache License

            VersionedParcelable
            https://mvnrepository.com/artifact/androidx.versionedparcelable/versionedparcelable/1.1.1
            The Android Open Source Project
            Apache License 2.0

            Lifecycle ViewModel with SavedState
            https://developer.android.com/jetpack/androidx/releases/lifecycle
            The Android Open Source Project
            Apache License 2.0

            Firebase Encoders JSON
            https://mvnrepository.com/artifact/com.google.firebase/firebase-encoders-json/18.0.0
            Apache License 2.0

            Cursoradapter
            https://developer.android.com/jetpack/androidx/releases/cursoradapter
            The Android Open Source Project
            Apache License 2.0

            Camera2
            https://developer.android.com/jetpack/androidx/releases/camera
            The Android Open Source Project
            Apache License 2.0

            Okio
            https://github.com/square/okio
            Square, Inc.
            Apache License 2.0

            Room Kotlin Extensions
            https://developer.android.com/jetpack/androidx/releases/room
            The Android Open Source Project
            Apache License 2.0

            CustomView Poolingcontainer
            https://developer.android.com/jetpack/androidx/releases/customview
            The Android Open Source Project
            Apache License 2.0

            Android Support Library Core UI
            https://developer.android.com/topic/libraries/support-library/packages
            The Android Open Source Project
            Apache License 2.0

            Core Kotlin Extensions
            https://developer.android.com/jetpack/androidx/releases/core
            The Android Open Source Project
            Apache License 2.0

            HttpClient Android Library
            https://github.com/smarek/httpclient-android
            Marek Sebera
            Apache License 2.0

            Jackson Databind
            https://github.com/FasterXML/jackson
            Tatu Saloranta
            Apache License 2.0

            Firebase Measurement Connector
            https://mvnrepository.com/artifact/com.google.firebase/firebase-measurement-connector/19.0.0
            Android Software Development Kit License

            Material Components For Android
            https://github.com/material-components/material-components-android
            The Android Open Source Project
            Apache License 2.0

            Navigation Runtime Kotlin Extensions
            https://developer.android.com/jetpack/androidx/releases/navigation
            The Android Open Source Project
            Apache License 2.0

            Apache HttpClient Mime
            http://hc.apache.org/httpcomponents-client
            Apache License 2.0

            Firebase Installations
            https://mvnrepository.com/artifact/com.google.firebase/firebase-installations/17.0.2
            Apache License 2.0

            Play Services Analytics
            https://mvnrepository.com/artifact/com.google.android.gms/play-services-analytics/18.0.2
            Android Software Development Kit License

            Transport Backend CCT
            https://mvnrepository.com/artifact/com.google.android.datatransport/transport-backend-cct/3.1.7
            Apache License 2.0

            Android Arch Runtime
            https://developer.android.com/jetpack/androidx/releases/arch-core
            The Android Open Source Project
            Apache License 2.0

            Gson
            https://mvnrepository.com/artifact/com.google.code.gson/gson/2.8.4
            Apache License 2.0

            Firebase Components
            https://mvnrepository.com/artifact/com.google.firebase/firebase-components/17.0.0
            Apache License 2.0

            FlatBuffers Java API
            https://github.com/google/flatbuffers
            Wouter van Oortmerssen
            Apache License 2.0

            LiveData Kotlin Extensions
            https://developer.android.com/jetpack/androidx/releases/lifecycle
            The Android Open Source Project
            Apache License 2.0

            Paging Runtime Kotlin Extensions
            https://developer.android.com/jetpack/androidx/releases/paging
            The Android Open Source Project
            Apache License 2.0

            Navigation Fragment Kotlin Extensions
            https://developer.android.com/jetpack/androidx/releases/navigation
            The Android Open Source Project
            Apache License 2.0

            Javax Inject
            https://code.google.com/archive/p/atinject
            Apache License 2.0

            Android Support Library Print
            https://developer.android.com/topic/libraries/support-library
            The Android Open Source Project
            Apache License 2.0

            Navigation UI Kotlin Extensions
            https://developer.android.com/jetpack/androidx/releases/navigation
            The Android Open Source Project
            Apache License 2.0

            Firebase Abt
            https://mvnrepository.com/artifact/com.google.firebase/firebase-abt/21.0.2
            Apache License 2.0

            AndroidX Preference
            https://developer.android.com/jetpack/androidx/releases/preference
            The Android Open Source Project
            Apache License 2.0

            Lifecycles Compiler
            https://developer.android.com/jetpack/androidx/releases/lifecycle
            The Android Open Source Project
            Apache License 2.0

            Parcelize Runtime
            https://mvnrepository.com/artifact/org.jetbrains.kotlin/kotlin-parcelize-runtime/1.4.32
            Kotlin Team
            Apache License 2.0

            AndroidX Ads Identifier
            https://mvnrepository.com/artifact/androidx.ads/ads-identifier/1.0.0-alpha04
            The Android Open Source Project
            Apache License 2.0

            Apache HttpCore
            http://hc.apache.org/httpcomponents-core/
            Apache License 2.0

            ViewPager2
            https://mvnrepository.com/artifact/androidx.viewpager2/viewpager2/1.0.0
            The Android Open Source Project
            Apache License 2.0

            Paging Common Kotlin Extensions
            https://developer.android.com/jetpack/androidx/releases/paging
            The Android Open Source Project
            Apache License 2.0

            Firebase Crashlytics
            https://mvnrepository.com/artifact/com.google.firebase/firebase-crashlytics/18.2.13
            Apache License 2.0

            AutoValue Annotations
            https://mvnrepository.com/artifact/com.google.auto.value/auto-value-annotations/1.6.3
            Apache License 2.0

            Adapter: RxJava 3
            https://github.com/square/retrofit
            Square, Inc.
            Apache License 2.0

            Gfpsdk Core
            https://github.com/naver/nam-sdk-android
            Copyright 2022-present NAVER Corp.
            Proprietary

            Play Services Base
            https://mvnrepository.com/artifact/com.google.android.gms/play-services-base/18.1.0
            Android Software Development Kit License

            Billing
            https://mvnrepository.com/artifact/com.android.billingclient/billing/4.0.0
            Android Software Development Kit License

            Android Support Library Sliding Pane Layout
            https://developer.android.com/jetpack/androidx/releases/slidingpanelayout
            The Android Open Source Project
            Apache License 2.0

            Kotlin Stdlib Jdk8
            https://mvnrepository.com/artifact/org.jetbrains.kotlin/kotlin-stdlib-jdk8/1.8.10
            Kotlin Team
            Apache License 2.0

            Activity
            https://developer.android.com/jetpack/androidx/releases/activity
            The Android Open Source Project
            Apache License 2.0

            Paging Runtime
            https://developer.android.com/jetpack/androidx/releases/paging
            The Android Open Source Project
            Apache License 2.0

            SQLite
            https://developer.android.com/jetpack/androidx/releases/sqlite
            The Android Open Source Project
            Apache License 2.0

            Android Support Library Async Layout Inflater
            https://mvnrepository.com/artifact/androidx.asynclayoutinflater/asynclayoutinflater/1.0.0-rc01
            The Android Open Source Project
            Apache License 2.0

            Firebase Crashlytics NDK
            https://mvnrepository.com/artifact/com.google.firebase/firebase-crashlytics-ndk/18.2.13
            Apache License 2.0

            Apache Commons Codec
            https://commons.apache.org/proper/commons-codec/
            Apache License 2.0

            Navigation Common
            https://developer.android.com/jetpack/androidx/releases/navigation
            The Android Open Source Project
            Apache License 2.0

            Glide
            https://github.com/bumptech/glide
            Copyright 2014 Google, Inc.
            Simplified BSD License, Apache License 2.0

            RxJava
            https://github.com/ReactiveX/RxJava
            David Karnok
            Apache License 2.0

            Room RXJava3
            https://developer.android.com/jetpack/androidx/releases/room
            The Android Open Source Project
            Apache License 2.0

            Android Support Library View Pager
            https://mvnrepository.com/artifact/androidx.viewpager/viewpager/1.0.0
            The Android Open Source Project
            Apache License 2.0

            AndroidX Ads Identifier Common
            https://mvnrepository.com/artifact/androidx.ads/ads-identifier-common/1.0.0-alpha04
            The Android Open Source Project
            Apache License 2.0

            Android Support Library Custom View
            https://mvnrepository.com/artifact/androidx.swiperefreshlayout/swiperefreshlayout/1.0.0
            The Android Open Source Project
            Apache License 2.0

            Guava: Google Core Libraries For Java
            https://github.com/google/guava
            Kevin Bourrillion
            Apache License 2.0

            Android Multi Dex Library
            https://mvnrepository.com/artifact/androidx.multidex/multidex/2.0.1
            The Android Open Source Project
            Apache License 2.0

            Play Services Tasks
            https://mvnrepository.com/artifact/com.google.android.gms/play-services-tasks/18.0.2
            Android Software Development Kit License

            Android Async HTTP Library
            https://github.com/android-async-http/android-async-http
            Marek Sebera
            Apache License 2.0

            Play Services GCM
            https://mvnrepository.com/artifact/com.google.android.gms/play-services-gcm/17.0.0
            Android Software Development Kit License

            Fragment Kotlin Extensions
            https://developer.android.com/jetpack/androidx/releases/fragment
            The Android Open Source Project
            Apache License 2.0

            Play Services Auth
            https://mvnrepository.com/artifact/com.google.android.gms/play-services-auth/20.3.0
            Android Software Development Kit License

            Android Support Library Document File
            https://mvnrepository.com/artifact/androidx.documentfile/documentfile/1.0.0
            The Android Open Source Project
            Apache License 2.0

            Play Services Analytics Impl
            https://mvnrepository.com/artifact/com.google.android.gms/play-services-analytics-impl/18.0.2
            Android Software Development Kit License

            Media3 ExoPlayer Module
            https://mvnrepository.com/artifact/androidx.media3/media3-exoplayer/1.1.0
            The Android Open Source Project
            Apache License 2.0

            Firebase Common KTX
            https://mvnrepository.com/artifact/com.google.firebase/firebase-common-ktx/20.1.2
            Apache License 2.0

            Apache Commons Logging
            http://commons.apache.org/logging
            Apache License 2.0

            Android Support Library Custom View
            https://mvnrepository.com/artifact/androidx.customview/customview/1.1.0
            The Android Open Source Project
            Apache License 2.0

            SavedState Kotlin Extensions
            https://developer.android.com/jetpack/androidx/releases/savedstate
            The Android Open Source Project
            Apache License 2.0

            Core
            https://developer.android.com/jetpack/androidx/releases/core
            The Android Open Source Project
            Apache License 2.0

            Dagger
            https://github.com/google/dagger
            Apache License 2.0

            Converter: Scalars
            https://github.com/square/retrofit
            Square, Inc.
            Apache License 2.0

            Media3 Database Module
            https://mvnrepository.com/artifact/androidx.media3/media3-database/1.1.0
            The Android Open Source Project
            Apache License 2.0

            AppCompat Resources
            https://developer.android.com/jetpack/androidx/releases/appcompat
            The Android Open Source Project
            Apache License 2.0

            RxAndroid
            https://github.com/ReactiveX/RxAndroid
            Copyright 2015 The RxAndroid authors
            Apache License 2.0

            Coil Base
            https://github.com/coil-kt/coil
            Copyright 2023 Coil Contributors
            Apache License 2.0

            Retrofit
            https://github.com/square/retrofit
            Square, Inc.
            Apache License 2.0

            Firebase Datatransport
            https://mvnrepository.com/artifact/com.google.firebase/firebase-datatransport/18.1.6
            Apache License 2.0

            Play Services Measurement Base
            https://mvnrepository.com/artifact/com.google.android.gms/play-services-measurement-base/21.1.1
            Android Software Development Kit License

            Firebase Config
            https://mvnrepository.com/artifact/com.google.firebase/firebase-config/21.1.2
            Apache License 2.0

            Glide Annotations
            https://github.com/bumptech/glide
            Copyright 2014 Google, Inc.
            Simplified BSD License, Apache License 2.0

            Legacy Support V4
            https://mvnrepository.com/artifact/androidx.legacy/legacy-support-v4/1.0.0
            The Android Open Source Project
            Apache License 2.0

            Lifecycle Process
            https://developer.android.com/jetpack/androidx/releases/lifecycle
            The Android Open Source Project
            Apache License 2.0

            Play Services Measurement
            https://mvnrepository.com/artifact/com.google.android.gms/play-services-measurement/21.1.1
            Android Software Development Kit License

            Play Services Measurement SDK
            https://mvnrepository.com/artifact/com.google.android.gms/play-services-measurement-sdk/21.1.1
            Android Software Development Kit License

            Guava ListenableFuture Only
            https://mvnrepository.com/artifact/com.google.guava/listenablefuture/9999.0-empty-to-avoid-conflict-with-guava
            Kevin Bourrillion
            Apache License 2.0

            J2ObjC Annotations
            https://github.com/google/j2objc
            Apache License 2.0

            Media3 Extractor Module
            https://mvnrepository.com/artifact/androidx.media3/media3-extractor/1.1.0
            The Android Open Source Project
            Apache License 2.0

            Collections
            https://developer.android.com/jetpack/androidx/releases/collection
            The Android Open Source Project
            Apache License 2.0

            Reactive Streams
            https://github.com/reactive-streams/reactive-streams-jvm
            Copyright 2014 Reactive Streams
            CC0

            WorkManager Runtime
            https://developer.android.com/jetpack/androidx/releases/work
            The Android Open Source Project
            Apache License 2.0

            Google HTTP Client Library For Java
            https://mvnrepository.com/artifact/com.google.http-client/google-http-client/1.22.0
            Apache License 2.0

            Android Support RecyclerView
            https://developer.android.com/jetpack/androidx/releases/recyclerview
            The Android Open Source Project
            Apache License 2.0

            Protolite Well Known Types
            https://mvnrepository.com/artifact/com.google.firebase/protolite-well-known-types/18.0.0
            Apache License 2.0

            Compose Runtime
            https://developer.android.com/jetpack/androidx/releases/compose-runtime
            The Android Open Source Project
            Apache License 2.0

            Kotlin Stdlib
            https://mvnrepository.com/artifact/org.jetbrains.kotlin/kotlin-stdlib/1.8.21
            Kotlin Team
            Apache License 2.0

            Annotation
            https://developer.android.com/jetpack/androidx/releases/annotation
            The Android Open Source Project
            Apache License 2.0

            Protocol Buffers [Core]
            https://mvnrepository.com/artifact/com.google.protobuf/protobuf-java/3.23.3
            BSD-3-Clause

            Camera Lifecycle
            https://developer.android.com/jetpack/androidx/releases/camera
            The Android Open Source Project
            Apache License 2.0

            Play Services TagManager V4 Impl
            https://mvnrepository.com/artifact/com.google.android.gms/play-services-tagmanager-v4-impl/18.0.2
            Android Software Development Kit License

            Firebase Appcheck
            https://mvnrepository.com/artifact/com.google.firebase/firebase-appcheck/16.0.1
            Apache License 2.0

            Firebase Encoders Proto
            https://mvnrepository.com/artifact/com.google.firebase/firebase-encoders-proto/16.0.0
            Apache License 2.0

            Play Services Cloud Messaging
            https://mvnrepository.com/artifact/com.google.android.gms/play-services-cloud-messaging/17.0.1
            Apache License 2.0

            ZXing Android Embedded
            https://github.com/journeyapps/zxing-android-embedded
            Copyright (C) 2012-2022 ZXing authors, Journey Mobile
            Apache License 2.0

            SQLite Framework Integration
            https://developer.android.com/jetpack/androidx/releases/sqlite
            The Android Open Source Project
            Apache License 2.0

            Android Support DynamicAnimation
            https://developer.android.com/jetpack/androidx/releases/dynamicanimation
            The Android Open Source Project
            Apache License 2.0

            Firebase Database
            https://mvnrepository.com/artifact/com.google.firebase/firebase-database/20.0.6
            Apache License 2.0

            Transport Runtime
            https://mvnrepository.com/artifact/com.google.android.datatransport/transport-runtime/3.1.7
            Apache License 2.0

            Android Support Library Coordinator Layout
            https://mvnrepository.com/artifact/androidx.coordinatorlayout/coordinatorlayout/1.1.0
            The Android Open Source Project
            Apache License 2.0

            Shimmer
            https://github.com/facebookarchive/shimmer-android
            Copyright (c) Meta Platforms, Inc.
            BSD 2-Clause License

            Jackson Annotations
            https://github.com/FasterXML/jackson
            Tatu Saloranta
            Apache License 2.0

            Firebase Encoders
            https://mvnrepository.com/artifact/com.google.firebase/firebase-encoders/17.0.0
            Apache License 2.0

            Lifecycle Common For Java 8
            https://developer.android.com/jetpack/androidx/releases/lifecycle
            The Android Open Source Project
            Apache License 2.0

            Android Support Library Media Compat
            https://developer.android.com/jetpack/androidx/releases/media
            The Android Open Source Project
            Apache License 2.0

            Android Support CardView V7
            https://mvnrepository.com/artifact/androidx.cardview/cardview/1.0.0
            The Android Open Source Project
            Apache License 2.0

            Navigation Common Kotlin Extensions
            https://developer.android.com/jetpack/androidx/releases/navigation
            The Android Open Source Project
            Apache License 2.0

            Firebase Messaging
            https://mvnrepository.com/artifact/com.google.firebase/firebase-messaging/23.0.8
            Apache License 2.0

            Paging Common
            https://developer.android.com/jetpack/androidx/releases/paging
            The Android Open Source Project
            Apache License 2.0

            Emoji2 Views Helper
            https://developer.android.com/jetpack/androidx/releases/emoji2
            The Android Open Source Project
            Apache License 2.0

            Android Preferences KTX
            https://developer.android.com/jetpack/androidx/releases/preference
            The Android Open Source Project
            Apache License 2.0

            Android For Cars App
            https://developer.android.com/jetpack/androidx/releases/car-app
            The Android Open Source Project
            Apache License 2.0

            Lifecycle LiveData
            https://developer.android.com/jetpack/androidx/releases/lifecycle
            The Android Open Source Project
            Apache License 2.0

            Adapter: RxJava 2
            https://github.com/square/retrofit
            Square, Inc.
            Apache License 2.0

            Lifecycle ViewModel
            https://developer.android.com/jetpack/androidx/releases/lifecycle
            The Android Open Source Project
            Apache License 2.0

            Lifecycle Service
            https://developer.android.com/jetpack/androidx/releases/lifecycle
            The Android Open Source Project
            Apache License 2.0

            Lifecycle Runtime
            https://developer.android.com/jetpack/androidx/releases/lifecycle
            The Android Open Source Project
            Apache License 2.0

            LiveData Kotlin Extensions
            https://developer.android.com/jetpack/androidx/releases/lifecycle
            The Android Open Source Project
            Apache License 2.0

            Lifecycle Kotlin Extensions
            https://developer.android.com/jetpack/androidx/releases/lifecycle
            The Android Open Source Project
            Apache License 2.0

            Lifecycle LiveData Core
            https://developer.android.com/jetpack/androidx/releases/lifecycle
            The Android Open Source Project
            Apache License 2.0

            Lifecycle ViewModel Kotlin Extensions
            https://developer.android.com/jetpack/androidx/releases/lifecycle
            The Android Open Source Project
            Apache License 2.0

            Android Support Library Local Broadcast Manager
            https://mvnrepository.com/artifact/androidx.localbroadcastmanager/localbroadcastmanager/1.0.0
            The Android Open Source Project
            Apache License 2.0

            WebKit
            https://developer.android.com/jetpack/androidx/releases/webkit
            The Android Open Source Project
            Apache License 2.0

            Guava InternalFutureFailureAccess and InternalFutures
            https://mvnrepository.com/artifact/com.google.guava/failureaccess/1.0.1
            Kevin Bourrillion
            Apache License 2.0

            Glide Disk LRU Cache Library
            https://github.com/bumptech/glide
            Copyright 2014 Google, Inc.
            Simplified BSD License, Apache License 2.0

            Glide GIF Decoder Library
            https://github.com/bumptech/glide
            Copyright 2014 Google, Inc.
            Simplified BSD License, Apache License 2.0

            Play Services Ads
            https://mvnrepository.com/artifact/com.google.android.gms/play-services-ads/21.3.0
            Android Software Development Kit License

            Play Services Auth Blockstore
            https://mvnrepository.com/artifact/com.google.android.gms/play-services-auth-blockstore/16.1.0
            Android Software Development Kit License

            Play Services Measurement SDK API
            https://mvnrepository.com/artifact/com.google.android.gms/play-services-measurement-sdk-api/21.1.1
            Android Software Development Kit License

            Play Services Auth Base
            https://mvnrepository.com/artifact/com.google.android.gms/play-services-auth-base/18.0.4
            Android Software Development Kit License

            Play Services Measurement API
            https://mvnrepository.com/artifact/com.google.android.gms/play-services-measurement-api/21.1.1
            Android Software Development Kit License

            Play Services Auth API Phone
            https://mvnrepository.com/artifact/com.google.android.gms/play-services-auth-api-phone/18.0.1
            Android Software Development Kit License

            Play Services Stats
            https://mvnrepository.com/artifact/com.google.android.gms/play-services-stats/17.0.3
            Android Software Development Kit License

            Play Services Basement
            https://mvnrepository.com/artifact/com.google.android.gms/play-services-basement/18.1.0
            Android Software Development Kit License

            Play Services IID
            https://mvnrepository.com/artifact/com.google.android.gms/play-services-iid/17.0.0
            Android Software Development Kit License

            Play Services Location
            https://mvnrepository.com/artifact/com.google.android.gms/play-services-location/20.0.0
            Android Software Development Kit License

            Play Services Ads
            https://mvnrepository.com/artifact/com.google.android.gms/play-services-ads/21.3.0
            Android Software Development Kit License

            Play Services Appset
            https://mvnrepository.com/artifact/com.google.android.gms/play-services-appset/16.0.1
            Android Software Development Kit License

            Play Services Measurement Impl
            https://mvnrepository.com/artifact/com.google.android.gms/play-services-measurement-impl/21.1.1
            Android Software Development Kit License

            Play Services Ads Lite
            https://mvnrepository.com/artifact/com.google.android.gms/play-services-ads-lite/21.3.0
            Android Software Development Kit License

            Play Services Ads Identifier
            https://mvnrepository.com/artifact/com.google.android.gms/play-services-ads-identifier/18.0.1
            Android Software Development Kit License

            Converter: Protocol Buffers
            https://github.com/square/retrofit
            Square, Inc.
            Apache License 2.0

            User Messaging Platform
            https://mvnrepository.com/artifact/com.google.android.ump/user-messaging-platform/2.0.0
            Android Software Development Kit License

            Android Support AnimatedVectorDrawable
            https://mvnrepository.com/artifact/androidx.vectordrawable/vectordrawable-animated/1.1.0
            The Android Open Source Project
            Apache License 2.0

            Kotlin Stdlib Jdk7
            https://mvnrepository.com/artifact/org.jetbrains.kotlin/kotlin-stdlib-jdk7/1.8.10
            Kotlin Team
            Apache License 2.0

            Kotlin Android Extensions Runtime
            https://mvnrepository.com/artifact/org.jetbrains.kotlin/kotlin-android-extensions-runtime/1.4.32
            Kotlin Team
            Apache License 2.0

            Kotlin Stdlib Common
            https://mvnrepository.com/artifact/org.jetbrains.kotlin/kotlin-stdlib-common/1.8.21
            Kotlin Team
            Apache License 2.0

            Kotlinx Coroutines Android
            https://github.com/Kotlin/kotlinx.coroutines
            Copyright 2000-2020 JetBrains s.r.o. and Kotlin Programming Language contributors.
            Apache License 2.0

            Kotlinx Coroutines Core
            https://github.com/Kotlin/kotlinx.coroutines
            Copyright 2000-2020 JetBrains s.r.o. and Kotlin Programming Language contributors.
            Apache License 2.0

            JetBrains Java Annotations
            https://github.com/JetBrains/java-annotations
            Copyright 2000-2016 JetBrains s.r.o.
            Apache License 2.0

            Navigation Runtime
            https://developer.android.com/jetpack/androidx/releases/navigation
            The Android Open Source Project
            Apache License 2.0

            Navigation Fragment Kotlin Extensions
            https://developer.android.com/jetpack/androidx/releases/navigation
            The Android Open Source Project
            Apache License 2.0

            Navigation UI Kotlin Extensions
            https://developer.android.com/jetpack/androidx/releases/navigation
            The Android Open Source Project
            Apache License 2.0

            Android Support VectorDrawable
            https://mvnrepository.com/artifact/androidx.vectordrawable/vectordrawable/1.1.0
            The Android Open Source Project
            Apache License 2.0

            Mixpanel Android
            https://github.com/mixpanel/mixpanel-android
            Copyright 2022 Mixpanel, Inc.
            Apache License 2.0

            Hilt Core
            https://github.com/google/dagger
            Apache License 2.0

            Dagger Lint Rules AAR Distribution
            https://github.com/google/dagger
            Apache License 2.0

            Android App Startup Runtime
            https://developer.android.com/jetpack/androidx/releases/startup
            The Android Open Source Project
            Apache License 2.0

            Android Arch Common
            https://developer.android.com/jetpack/androidx/releases/arch-core
            The Android Open Source Project
            Apache License 2.0

            Media3 OkHttp DataSource Module
            https://mvnrepository.com/artifact/androidx.media3/media3-datasource-okhttp/1.1.0
            The Android Open Source Project
            Apache License 2.0

            Media3 Common Module
            https://mvnrepository.com/artifact/androidx.media3/media3-common/1.1.0
            The Android Open Source Project
            Apache License 2.0

            Media3 Decoder Module
            https://mvnrepository.com/artifact/androidx.media3/media3-decoder/1.1.0
            The Android Open Source Project
            Apache License 2.0

            Media3 Container Module
            https://mvnrepository.com/artifact/androidx.media3/media3-container/1.1.0
            The Android Open Source Project
            Apache License 2.0

            Media3 UI Module
            https://mvnrepository.com/artifact/androidx.media3/media3-ui/1.1.0
            The Android Open Source Project
            Apache License 2.0

            WindowManager
            https://mvnrepository.com/artifact/androidx.window/window/1.0.0
            The Android Open Source Project
            Apache License 2.0

            Camera View
            https://developer.android.com/jetpack/androidx/releases/camera
            The Android Open Source Project
            Apache License 2.0

            Camera Extensions
            https://developer.android.com/jetpack/androidx/releases/camera
            The Android Open Source Project
            Apache License 2.0

            Camera Video
            https://developer.android.com/jetpack/androidx/releases/camera
            The Android Open Source Project
            Apache License 2.0

            Coil
            https://github.com/coil-kt/coil
            Copyright 2023 Coil Contributors
            Apache License 2.0

            ViewBinding
            https://mvnrepository.com/artifact/androidx.databinding/viewbinding/8.1.1
            Apache License 2.0

            Tracing
            https://developer.android.com/jetpack/androidx/releases/tracing
            The Android Open Source Project
            Apache License 2.0

            ConstraintLayout Core
            https://mvnrepository.com/artifact/androidx.constraintlayout/constraintlayout-core/1.0.4
            The Android Open Source Project
            Apache License 2.0

            Android Resource Inspection Annotations
            https://developer.android.com/jetpack/androidx/releases/resourceinspection
            The Android Open Source Project
            Apache License 2.0

            Picasso
            https://github.com/square/picasso
            Copyright 2013 Square, Inc.
            Apache License 2.0

            Firebase Analytics KTX
            https://mvnrepository.com/artifact/com.google.firebase/firebase-analytics-ktx/21.1.1
            Android Software Development Kit License

            Firebase IID Interop
            https://mvnrepository.com/artifact/com.google.firebase/firebase-iid-interop/17.1.0
            Android Software Development Kit License

            Firebase Perf
            https://mvnrepository.com/artifact/com.google.firebase/firebase-perf/20.1.1
            Apache License 2.0

            Firebase Database Collection
            https://mvnrepository.com/artifact/com.google.firebase/firebase-database-collection/18.0.1
            Apache License 2.0

            Firebase Installations
            https://mvnrepository.com/artifact/com.google.firebase/firebase-installations/17.0.2
            Apache License 2.0

            Firebase Annotations
            https://mvnrepository.com/artifact/com.google.firebase/firebase-annotations/16.1.0
            Apache License 2.0

            Firebase Analytics
            https://mvnrepository.com/artifact/com.google.firebase/firebase-analytics/21.1.1
            Android Software Development Kit License

            Firebase Common
            https://mvnrepository.com/artifact/com.google.firebase/firebase-common/20.1.2
            Apache License 2.0

            Firebase Auth Interop
            https://mvnrepository.com/artifact/com.google.firebase/firebase-auth-interop/19.0.2
            Android Software Development Kit License

            Room Common
            https://developer.android.com/jetpack/androidx/releases/room
            The Android Open Source Project
            Apache License 2.0

            Room Runtime
            https://developer.android.com/jetpack/androidx/releases/room
            The Android Open Source Project
            Apache License 2.0

            Room RXJava2
            https://developer.android.com/jetpack/androidx/releases/room
            The Android Open Source Project
            Apache License 2.0

            FindBugs JSR305
            https://findbugs.sourceforge.net/
            Copyright © 2007 Free Software Foundation, Inc.
            Apache License 2.0

            Consent Library
            https://mvnrepository.com/artifact/com.google.android.ads.consent/consent-library/1.0.8
            Android Software Development Kit License

            Emoji2
            https://developer.android.com/jetpack/androidx/releases/emoji2
            The Android Open Source Project
            Apache License 2.0

            Checker Qual
            https://github.com/typetools/checker-framework
            Copyright 2004-present by the Checker Framework developers
            MIT License

            Futures
            https://developer.android.com/topic/libraries/architecture?hl=ko
            The Android Open Source Project
            Apache License 2.0

            lottie
            https://github.com/airbnb/lottie-android
            Copyright 2018 Airbnb, Inc.
            Apache License 2.0

            Collections Kotlin Extensions
            https://mvnrepository.com/artifact/androidx.collection/collection-ktx/1.1.0
            The Android Open Source Project
            Apache License 2.0

            AppCompat
            https://developer.android.com/jetpack/androidx/releases/appcompat
            The Android Open Source Project
            Apache License 2.0

            SplashScreen
            https://developer.android.com/jetpack/androidx/releases/core
            The Android Open Source Project
            Apache License 2.0

            @BugPattern Annotation
            https://github.com/google/error-prone
            Apache License 2.0

            Biometric
            https://developer.android.com/jetpack/androidx/releases/biometric?hl=ko#1.1.0
            The Android Open Source Project
            Apache License 2.0

            Saved State
            https://developer.android.com/jetpack/androidx/releases/savedstate
            The Android Open Source Project
            Apache License 2.0

            Android Platform Extensions to The Google HTTP Client Library For Java.
            https://mvnrepository.com/artifact/com.google.http-client/google-http-client-android/1.22.0
            Apache License 2.0

            JState
            https://github.com/UnquietCode/JState
            Copyright (c) 2013 Benjamin Fagin
            MIT License

            Android For Cars App Projected Extension
            https://developer.android.com/jetpack/androidx/releases/car-app
            The Android Open Source Project
            Apache License 2.0

            AppsFlyerSDK
            https://github.com/AppsFlyerSDK/appsflyer-android-sdk
            AppsFlyer Ltd.
            Proprietary

            Extension NDA
            https://github.com/naver/nam-sdk-android
            Copyright 2022-present NAVER Corp.
            Proprietary

            Transport API
            https://mvnrepository.com/artifact/com.google.android.datatransport/transport-api/3.0.0
            Apache License 2.0

            Experimental Annotation
            https://developer.android.com/jetpack/androidx/releases/annotation
            The Android Open Source Project
            Apache License 2.0

            Android Support Library Drawer Layout
            https://mvnrepository.com/artifact/androidx.drawerlayout/drawerlayout/1.1.1
            The Android Open Source Project
            Apache License 2.0

            Jackson Core
            https://github.com/FasterXML/jackson-core
            Tatu Saloranta
            Apache License 2.0

            Activity Kotlin Extensions
            https://developer.android.com/jetpack/androidx/releases/activity
            The Android Open Source Project
            Apache License 2.0

            Browser
            https://developer.android.com/jetpack/androidx/releases/browser
            The Android Open Source Project
            Apache License 2.0

            Android Target Tooltip
            https://github.com/sephiroth74/android-target-tooltip
            Copyright 2018 Alessandro Crugnola
            Apache License 2.0

            Android Transition Support Library
            https://developer.android.com/jetpack/androidx/releases/transition
            The Android Open Source Project
            Apache License 2.0

            Fragment
            https://developer.android.com/jetpack/androidx/releases/fragment
            The Android Open Source Project
            Apache License 2.0

            Android Support Library Interpolators
            https://mvnrepository.com/artifact/androidx.interpolator/interpolator/1.0.0
            The Android Open Source Project
            Apache License 2.0

            Android Support Library Core Utilities
            https://mvnrepository.com/artifact/androidx.legacy/legacy-support-core-utils/1.0.0
            The Android Open Source Project
            Apache License 2.0

            Camera Core
            https://developer.android.com/jetpack/androidx/releases/camera
            The Android Open Source Project
            Apache License 2.0, BSD License
            """
let licenses = str.split(separator: "\n\n").map{ String($0) }.sorted()
var p = ""
licenses.forEach{
    p += $0
    p += "\n\n"
}
print(p)

print("dd","aa")
print(1...5)
enum MasterLevel: Int {
    case beginner
    case intermediate
    case professional
}

let pro = MasterLevel(rawValue: 2)
let otherLevel = MasterLevel(rawValue: 5) // -> nil

enum Direction: String {
    case up
    case down = "ddd"
}

let up = Direction(rawValue: "up")
let otherDirection = Direction(rawValue: "left") // -> nil

enum MediaType {
    case audio(String)
    case video(String)
}

var mp3: MediaType = .audio("mp3")
var h264: MediaType = .video("h264")



var phone=(os: "iOS", version: 1, isAnd: false)
phone.os
phone.version
phone.isAnd

let list = [1,1,1,1,1]
var filterList = list.filter{ $0 == 0 }

func s27627() {
    let str = Array(readLine()!)
    var isNo = true
    for i in 0..<str.count-1 {
        let a = String(str[0...i])
        let b = String(str[i+1..<str.count])
        if isPalindrome(a) && isPalindrome(b) {
            print("\(a) \(b)")
            isNo = false
            break
        }
    }
    if isNo {
        print("NO")
    }
}

func isPalindrome(_ s:String) -> Bool {
    return s == String(s.reversed())
}

func s27475() {
    let n = Int(readLine()!)!
    for _ in 1...n {
        let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
        let n = readLine()!.split(separator: " ").map{ Int(String($0))! }
        let m = readLine()!.split(separator: " ").map{ Int(String($0))! }
        var answer = 0
        var nIndex = 0
        var mIndex = 0
        while true {
            if nIndex == l[0] || mIndex == l[1] { break }
            if n[nIndex] == m[mIndex] {
                answer += 1
                nIndex += 1
                mIndex += 1
            } else if n[nIndex] > m[mIndex] {
                mIndex += 1
            } else {
                nIndex += 1
            }
        }
        print(answer)
    }
}

func s21022() {
    let n = Int(readLine()!)!
    let a = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let b = readLine()!.split(separator: " ").map{ Int(String($0))! }
    var answer = 0
    for i in 0..<n {
        if a[i] > b[i] {
            answer += 3
        } else if a[i] == b[i] {
            answer += 1
        }
    }
    print(answer)
}

func s13670() {
    while true {
        let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
        let h1 = l[0]
        let m1 = l[1]
        let h2 = l[2]
        let m2 = l[3]
        if h1 + m1 + h2 + m2 == 0 { break }
        if h2 < h1 || (h2==h1 && m2 < m1) {
            let answer = (h2+24-h1)*60+m2-m1
            print(answer)
        } else {
            let answer = (h2-h1)*60+m2-m1
            print(answer)
        }
    }
}

func s21507() {
    let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
    var sum = min(l[0], l[1]) + min(l[2], l[3])
    var answer = 0
    while true {
        if sum < answer*answer { break }
        answer += 1
    }
    print(answer-1)
}

func s9924() {
    let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
    var a = l[0]
    var b = l[1]
    var answer = 0
    while true {
        if a == b { break }
        let max = max(a,b)
        let min = min(a,b)
        a = max-min
        b = min
        answer += 1
    }
    print(answer)
}

func s25850() {
    let n = Int(readLine()!)!
    var answer = ""
    var map:[Int:String] = [:]
    let player = ["A", "B", "C", "D", "E", "F"]
    for i in 0..<n {
        let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
        for j in 1..<l.count {
            map[l[j]] = player[i]
        }
    }
    for k in 10...99 {
        if map[k] != nil {
            answer += map[k] ?? ""
        }
    }
    print(answer)
}

func s15179() {
    let team1 = readLine()!
    let team2 = readLine()!
    let n = Int(readLine()!)!
    let str = Array(readLine()!)
    var score1 = 0
    var score2 = 0
    for i in 0..<n {
        if i%2 == 0 {
            if str[i] == "H" {
                score1 += 1
            } else if str[i] == "D" {
                if score1 == 6 {
                    score1 += 1
                } else {
                    score1 += 2
                }
            } else if str[i] == "O" {
                score2 += 1
            }
        } else {
            if str[i] == "H" {
                score2 += 1
            } else if str[i] == "D" {
                if score2 == 6 {
                    score2 += 1
                } else {
                    score2 += 2
                }
            } else if str[i] == "O" {
                score1 += 1
            }
        }
        if score1 == 7 || score2 == 7 { break }
    }
    var answer = "\(team1) \(score1) \(team2) \(score2). "
    if score1 == score2 {
        answer += "All square."
    } else if score1 == 7 {
        answer += "\(team1) has won."
    } else if score2 == 7 {
        answer += "\(team2) has won."
    } else if score1 > score2 {
        answer += "\(team1) is winning."
    } else {
        answer += "\(team2) is winning."
    }
    print(answer)
}

func s8826() {
    let n = Int(readLine()!)!
    for _ in 1...n {
        readLine()
        let str = Array(readLine()!)
        var n = 0
        var s = 0
        var w = 0
        var e = 0
        for i in 0..<str.count {
            if str[i] == "N" {
                n += 1
            } else if str[i] == "S" {
                s += 1
            } else if str[i] == "W" {
                w += 1
            } else {
                e += 1
            }
        }
        let answer = abs(n-s)+abs(w-e)
        print(answer)
    }
}

func s17884() {
    let n = Int(readLine()!)!
    let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
    var map = [1:1]
    for i in 1..<n {
        map[l[i-1]+2] = 1+i
    }
    var answer = ""
    for i in 1...n {
        answer += "\(map[i] ?? 0) "
    }
    answer.removeLast()
    print(answer)
}

func s5246() {
    let n = Int(readLine()!)!
    for _ in 1...n {
        let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
        let a = l[0]
        if a > 0 {
            var map:[Int:Int] = [:]
            for i in 1...a {
                var b = map[l[i*2]] ?? 0
                map[l[i*2]] = b+1
            }
            let maxC = map.sorted{ $0.value > $1.value }.first?.value ?? 1
            print(maxC)
        } else {
            print(0)
        }
    }
}

func s5365() {
    let n = Int(readLine()!)!
    let l = readLine()!.split(separator: " ").map{ String($0) }
    var answer = ""
    var length = 0
    for i in 0..<n {
        if l[i].count > length {
            answer += String(Array(l[i])[length])
        } else {
            answer += " "
        }
        length = l[i].count-1
    }
    print(answer)
}

func s9783() {
    let map:[Character:String] = [
        "a":"01",
        "b":"02",
        "c":"03",
        "d":"04",
        "e":"05",
        "f":"06",
        "g":"07",
        "h":"08",
        "i":"09",
        "j":"10",
        "k":"11",
        "l":"12",
        "m":"13",
        "n":"14",
        "o":"15",
        "p":"16",
        "q":"17",
        "r":"18",
        "s":"19",
        "t":"20",
        "u":"21",
        "v":"22",
        "w":"23",
        "x":"24",
        "y":"25",
        "z":"26",
        "A":"27",
        "B":"28",
        "C":"29",
        "D":"30",
        "E":"31",
        "F":"32",
        "G":"33",
        "H":"34",
        "I":"35",
        "J":"36",
        "K":"37",
        "L":"38",
        "M":"39",
        "N":"40",
        "O":"41",
        "P":"42",
        "Q":"43",
        "R":"44",
        "S":"45",
        "T":"46",
        "U":"47",
        "V":"48",
        "W":"49",
        "X":"50",
        "Y":"51",
        "Z":"52",
        "0":"#0",
        "1":"#1",
        "2":"#2",
        "3":"#3",
        "4":"#4",
        "5":"#5",
        "6":"#6",
        "7":"#7",
        "8":"#8",
        "9":"#9",
    ]
    let str = readLine()!
    var answer = ""
    for i in 0..<str.count {
        let s = map[Array(str)[i]]
        if s == nil {
            answer += String(Array(str)[i])
        } else {
            answer += s!
        }
    }
    print(answer)
}

func s9776() {
    let n = Int(readLine()!)!
    var max = 0.0
    for _ in 1...n {
        let l = readLine()!.split(separator: " ").map{ String($0) }
        if l[0] == "S" {
            let r = Double(l[1])!
            let a = (4/3)*r*r*r*3.14159265359
            if max < a { max = a }
        } else if l[1] == "C" {
            let r = Double(l[1])!
            let h = Double(l[2])!
            let a = (1/3)*3.14159265359*r*r*h
            if max < a { max = a }
        } else {
            let r = Double(l[1])!
            let h = Double(l[2])!
            let a = 3.14159265359*r*r*h
            if max < a { max = a }
        }
    }
    print(String(format: "%.3f", max))
}

func s9771() {
    let word = readLine()!
    var sum = 0
    while true {
        guard let line = readLine() else { break }
        sum += " \(line) ".components(separatedBy: word).count-1
    }
    print(sum)
}

func s27983() {
    let n = Int(readLine()!)!
    let xl = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let ll = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let cl = readLine()!.split(separator: " ").map{ String($0) }

    var answer = "NO"
    var a = 0
    var b = 0

    for i in 0..<n-1 {
        for j in i+1..<n {
            if cl[i] != cl[j] {
                if abs(xl[i]-xl[j]) <= ll[i] + ll[j] {
                    answer = "YES"
                    a = i+1
                    b = j+1
                    break
                }
            }
        }
        if answer == "YES" {
            break
        }
    }

    print(answer)
    if answer == "YES" {
        print("\(a) \(b)")
    }
}

func s27326() {
    readLine()
    let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
    var list: [Int] = []
    for i in 0..<l.count {
        if list.contains(l[i]) {
            list.remove(at: list.firstIndex(of: l[i])!)
        } else {
            list.append(l[i])
        }
    }
    print(list[0])
}

func s9773() {
    let n = Int(readLine()!)!
    for _ in 1...n {
        let num = Int(readLine()!)!
        var sum = (num%1000)*10
        var a = num
        while a > 0 {
            sum += a%10
            a /= 10
        }
        
        if sum > 9999 {
            sum = sum%10000
        } else if sum < 1000 {
            sum += 1000
        }
        
        if sum < 10 {
            print("000\(sum)")
        } else if sum < 100 {
            print("00\(sum)")
        } else if sum < 1000 {
            print("0\(sum)")
        } else {
            print(sum)
        }
    }
}

func s20336() {
    readLine()
    let l = readLine()!.split(separator: " ").map{ String($0) }
    for i in 0..<l.count {
        print(l[i])
    }
}

func s28114() {
    var yl:[Int] = []
    var map:[Int:Character] = [:]
    while true {
        guard let line = readLine() else { break }
        let l = line.split(separator: " ").map{ String($0) }
        yl.append(Int(l[1])!%100)
        map[Int(l[0])!] = l[2].first!
    }
    var first = ""
    yl.sorted(by: <).map {
        first += "\($0)"
    }
    print(first)
    var second = ""
    map.keys.sorted(by: >).map {
        second += String(map[$0]!)
    }
    print(second)
}

func s28135() {
    let n = Int(readLine()!)!
    var s = 0
    if n > 50 {
        for i in 50..<n {
            var a = i
            while a >= 50 {
                if a%100 == 50 {
                    s += 1
                    break
                } else {
                    a /= 10
                }
            }
        }
    }
    print(s+n)
}

func s28061() {
    let n = Int(readLine()!)!
    let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
    var max = 0
    for i in 0..<n {
        let a = l[i]-n+i
        if a > max {
            max = a
        }
    }
    print(max)
}

func s27736() {
    let n = Int(readLine()!)!
    let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
    var a = 0
    var b = 0
    for i in 0..<n {
        if l[i] == 0 {
            b += 1
        } else {
            a += l[i]
        }
    }
    if b >= (n+1)/2 {
        print("INVALID")
    } else if a > 0 {
        print("APPROVED")
    } else {
        print("REJECTED")
    }
}

func s28235() {
    let s = readLine()!
    let map = [
        "SONGDO":"HIGHSCHOOL",
        "CODE":"MASTER",
        "2023":"0611",
        "ALGORITHM":"CONTEST",
    ]
    print(map[s] ?? "")
}

final class FileIO {
    private var buffer:[UInt8]
    private var index: Int
    
    init(fileHandle: FileHandle = FileHandle.standardInput) {
        buffer = Array(fileHandle.readDataToEndOfFile())+[UInt8(0)] // 인덱스 범위 넘어가는 것 방지
        index = 0
    }
    
    @inline(__always) private func read() -> UInt8 {
        defer { index += 1 }
        
        return buffer.withUnsafeBufferPointer { $0[index] }
    }
    
    @inline(__always) func readInt() -> Int {
        var sum = 0
        var now = read()
        var isPositive = true
        
        while now == 10
                || now == 32 { now = read() } // 공백과 줄바꿈 무시
        if now == 45{ isPositive.toggle(); now = read() } // 음수 처리
        while now >= 48, now <= 57 {
            sum = sum * 10 + Int(now-48)
            now = read()
        }
        
        return sum * (isPositive ? 1:-1)
    }
    
    @inline(__always) func readString() -> String {
        var str = ""
        var now = read()
        
        while now == 10
                || now == 32 { now = read() } // 공백과 줄바꿈 무시
        
        while now != 10
                && now != 32 && now != 0 {
            str += String(bytes: [now], encoding: .ascii)!
            now = read()
        }
        
        return str
    }
}

func s28014() {
    let file = FileIO()
    let n = file.readInt()
    var s = 0
    var h = 0
    for _ in 0..<n {
        let num = file.readInt()
        if num >= h {
            s += 1
        }
        h = num
    }
    print(s)
}


func s16503() {
    let l = readLine()!.split(separator: " ").map{ String($0) }
    let k1 = Int(l[0])!
    let o1 = l[1]
    let k2 = Int(l[2])!
    let o2 = l[3]
    let k3 = Int(l[4])!

    func getV(o: String, n1: Int, n2: Int) -> Int {
        var r = 0
        if o == "*" {
            r = n1*n2
        } else if o == "/" {
            r = n1/n2
        } else if o == "+" {
            r = n1+n2
        } else {
            r = n1-n2
        }
        return r
    }

    var a = getV(o: o2, n1: getV(o: o1, n1: k1, n2: k2), n2: k3)
    var b = getV(o: o1, n1: k1, n2: getV(o: o2, n1: k2, n2: k3))

    print("\(min(a, b))")
    print("\(max(a, b))")
}

func s27960() {
    let list = [512, 256, 128, 64, 32, 16, 8, 4, 2, 1]
    let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
    var a = l[0]
    var b = l[1]
    var c:[Int] = []

    for i in 0..<list.count {
        if a == 0 { break }
        if a >= list[i] {
            c.append(list[i])
            a -= list[i]
        }
    }
    for i in 0..<list.count {
        if b == 0 { break }
        if b >= list[i] {
            b -= list[i]
            if c.contains(list[i]) {
                c.remove(at: c.firstIndex(of: list[i])!)
            } else {
                c.append(list[i])
            }
        }
    }
    let sum = c.reduce(0, +)
    print(sum)
}

func s15784() {
    let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let N = l[0]
    let a = l[1]
    let b = l[2]
    var maxV = 0
    var eric = 0
    for i in 1...N {
        let line = readLine()!.split(separator: " ").map{ Int(String($0))! }
        if i == a {
            eric = line[b-1]
            for j in 0..<N {
                if maxV < line[j] {
                    maxV = line[j]
                }
            }
        } else {
            if maxV < line[b-1] {
                maxV = line[b-1]
            }
        }
    }
    var happy = eric >= maxV
    print(happy ? "HAPPY" : "ANGRY")
}

func s28224() {
    let n = Int(readLine()!)!
    var sum = 0
    for _ in 1...n {
        let a = Int(readLine()!)!
        sum += a
    }
    print(sum)
}

func s18691() {
    let n = Int(readLine()!)!
    for _ in 1...n {
        var sum = 0
        let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
        let g = l[0]
        let c = l[1]
        let e = l[2]
        if e > c {
            sum = (e-c)*(g*2-1)
        }
        print(sum)
    }
}

func s27880() {
    var sum = 0
    while true {
        guard let line = readLine() else { break }
        let l = line.split(separator: " ").map{ String($0) }
        if l[0] == "Es" {
            let c = Int(l[1])!
            sum += c*21
        } else {
            let c = Int(l[1])!
            sum += c*17
        }
    }
    print(sum)
}

func s27890() {
    let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
    var x = l[0]
    let n = l[1]
    if n > 0 {
        for _ in 1...n {
            if x%2 == 0 {
                x = (x/2)^6
            } else {
                x = (2*x)^6
            }
        }
    }
    print(x)
}

func s28097() {
    let n = Int(readLine()!)!
    let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let s = (n-1)*8 + l.reduce(0, +)
    let day = s/24
    let time = s%24
    print("\(day) \(time)")
}

func s28074() {
    let s = readLine()!
    let mobis = Array("MOBIS")
    var result = "YES"
    for i in 0..<mobis.count {
        if !s.contains(mobis[i]) {
            result = "NO"
            break
        }
    }
    print(result)
}

func s27918() {
    let N = Int(readLine()!)!
    var X = 0
    var Y = 0
    for _ in 1...N {
        let s = readLine()!
        if s == "D" {
            X += 1
        } else {
            Y += 1
        }
        if abs(X-Y) > 1 {
            break
        }
    }

    print("\(X):\(Y)")
}

func s28113() {
    let l = readLine()!.split(separator: " ").map{ Int(String($0))! }

    let N = l[0]
    let A = l[1]
    let B = l[2]

    if N > B || A < B {
        print("Bus")
    } else if B < A {
        print("Subway")
    } else {
        print("Anything")
    }
}

func s27889() {
    let s = readLine()!
    let map = [
        "NLCS": "North London Collegiate School",
        "BHA": "Branksome Hall Asia",
        "KIS": "Korea International School",
        "SJA": "St. Johnsbury Academy",
    ]
    print(map[s] ?? "")
}

func s27959() {
    let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let a = l[0]
    let b = l[1]
    print(a*100 >= b ? "Yes" : "No")
}

func s2018() {
    let n = Int(readLine()!)!
    var c = 1
    var a = 1
    while true {
        var sum = a*(a+1)/2
        if n-sum <= 0 {
            break
        } else {
            if (n-sum)%(a+1) == 0 {
                c += 1
            }
            a += 1
        }
    }
    print(c)
}

func s25206() {
    var sum = 0.0
    var c = 0.0
    let dic = [
        "A+" : 4.5,
        "A0" : 4.0,
        "B+" : 3.5,
        "B0" : 3.0,
        "C+" : 2.5,
        "C0" : 2.0,
        "D+" : 1.5,
        "D0" : 1.0,
        "F"  : 0.0,
    ]
    while true {
        guard let line = readLine() else { break }
        var list = line.split(separator: " ").map{ String($0) }
        let p = Double(list[1])!
        let s = list[2]
        if s != "P" {
            c += p
            sum += (dic[s] ?? 0)*p
        }
    }
    print(sum/c)
}

// 최대공약수
func gcd(_ a: Int, _ b: Int) -> Int{
    if (b == 0) { return a }
    return gcd(b, a % b)
}

// 최소공배수
func lcm(_ a: Int, _ b: Int) -> Int {
    return a * b / gcd(a, b)
}

func s13241() {
    let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
    print(lcm(l[0], l[1]))
}

func s2635() {
    let n = Int(readLine()!)!
    var maxC = 0
    var str = ""
    for i in 1...n {
        var c = 2
        var s = "\(n) \(i)"
        var a = n
        var b = i
        while a-b >= 0 {
            c += 1
            let d = a-b
            a = b
            b = d
            s += " \(d)"
        }
        if maxC < c {
            maxC = c
            str = s
        }
    }
    print(maxC)
    print(str)
}

func s27855() {
    let l1 = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let l2 = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let s1 = l1[0]*3+l1[1]
    let s2 = l2[0]*3+l2[1]
    if s1 == s2 {
        print("NO SCORE")
    } else if s1 > s2 {
        print("1 \(s1-s2)")
    } else {
        print("2 \(s2-s1)")
    }
}

func s27541() {
    readLine()
    let arr = Array(readLine()!)
    if arr[arr.count-1] == "G" {
        let str = String(arr[0...arr.count-2])
        print(str)
    } else {
        let str = String(arr)+"G"
        print(str)
    }
}

func s12174() {
    let t = Int(readLine()!)!
    for i in 1...t {
        let n = Int(readLine()!)!
        let arr = Array(readLine()!)
        var str = ""
        for j in 0..<n {
            var byte = ""
            for k in 0...7 {
                if arr[j*8+k] == "I" {
                    byte += "1"
                } else {
                    byte += "0"
                }
            }
            let binaryNumber = Int(byte, radix: 2)!
            str += String(UnicodeScalar(binaryNumber)!)
        }
        
        print("Case #\(i): \(str)")
    }
}

func s1268() {
    let n = Int(readLine()!)!
    var list:[[Int]] = []
    for _ in 1...n {
        let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
        list.append(l)
    }
    var maxC = 0
    var num = 1
    for i in 0..<list.count {
        var c = 0
        for j in 0..<list.count {
            if i != j {
                for k in 0...4 {
                    if list[i][k] == list[j][k] {
                        c += 1
                        break
                    }
                }
            }
        }
        if maxC < c {
            maxC = c
            num = i+1
        }
    }
    print(num)
}

func s5635() {
    let n = Int(readLine()!)!
    var list:[[String]] = []
    for _ in 1...n {
        let l = readLine()!.split(separator: " ").map{ String($0) }
        list.append(l)
    }
    let sorted = list.sorted {
        let aY = Int($0[3])!
        let bY = Int($1[3])!
        if aY == bY {
            let aM = Int($0[2])!
            let bM = Int($1[2])!
            if aM == bM {
                let aD = Int($0[1])!
                let bD = Int($1[1])!
                return aD > bD
            } else {
                return aM > bM
            }
        } else {
            return aY > bY
        }
    }
    print(sorted[0][0])
    print(sorted[sorted.count-1][0])
}

func s14916() {
    let n = Int(readLine()!)!
    var a = n/5
    var c = -1
    while a >= 0 {
        if (n-a*5)%2 == 0 {
            c = a+(n-a*5)/2
            break
        }
        a -= 1
    }
    print(c)
}

func s9625() {
    let n = Int(readLine()!)!
    var a = 1
    var b = 0
    for _ in 1...n {
        let c = a
        a = b
        b = c+b
    }
    print("\(a) \(b)")
}

public struct Queue<T> {
  fileprivate var array = [T]()
  
  public var isEmpty: Bool {
    return array.isEmpty
  }
  
  public var count: Int {
    return array.count
  }
  
  public mutating func enquque(_ element: T) {
    array.append(element)
  }
  
  public mutating func dequeue() -> T? {
    if isEmpty {
      return nil
    } else {
      return array.removeFirst()
    }
  }
  
  public var front: T? {
    return array.first
  }
}

func s2161() {
    var queue = Queue<Int>()
    let n = Int(readLine()!)!
    for i in 1...n {
        queue.enquque(i)
    }
    var result:[Int] = []
    while queue.count > 1 {
        result.append(queue.dequeue()!)
        queue.enquque(queue.dequeue()!)
    }
    result.append(queue.dequeue()!)

    var str = ""
    for n in result {
        str += "\(n) "
    }
    str.removeLast()
    print(str)
}

func s7785() {
    let n = Int(readLine()!)!
    var dic:[String:Bool] = [:]
    for _ in 1...n {
        let l = readLine()!.split(separator: " ").map{ String($0) }
        dic[l[0]] = l[1] == "enter"
    }
    for name in dic.filter({ $0.value }).keys.sorted(by: >) {
        print(name)
    }
}

func s1439() {
    let str = readLine()!
    let n = str.split(separator: "0").count
    let n2 = str.split(separator: "1").count
    print(min(n,n2))
}

func s10812() {
    let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let N = l[0]
    let M = l[1]
    var dic:[Int:Int] = [:]
    for i in 1...N {
        dic[i] = i
    }
    for _ in 1...M {
        let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
        let i = l[0]
        let j = l[1]
        let k = l[2]
        var temp:[Int] = []
        for n in k...j {
            temp.append(dic[n] ?? 0)
        }
        if k > i {
            for n in i...k-1 {
                temp.append(dic[n] ?? 0)
            }
        }
        for n in i...j {
            dic[n] = temp[n-i]
        }
    }
    var str = ""
    for i in 1...N {
        str += "\(dic[i] ?? 0) "
    }
    str.removeLast()
    print(str)
}

func s9655() {
    let n = Int(readLine()!)!
    if n%2 == 0 {
        print("CY")
    } else {
        print("SK")
    }
}

func s2822() {
    var dic:[Int:Int] = [:]
    for i in 1...8 {
        let n = Int(readLine()!)!
        dic[n] = i
    }
    var list:[Int] = []
    let sorted = dic.keys.sorted(by: >)
    var sum = 0
    for i in 0...4 {
        sum += sorted[i]
        list.append(dic[sorted[i]]!)
    }
    print(sum)
    list.sort()
    var str = ""
    for n in list {
        str += "\(n) "
    }
    str.removeLast()
    print(str)
}

func s2167() {
    let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let N = l[0]
    var b:[[Int]] = []
    for _ in 1...N {
        b.append(readLine()!.split(separator: " ").map{ Int(String($0))! })
    }
    let n = Int(readLine()!)!
    for _ in 1...n {
        let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
        let i = l[0]
        let j = l[1]
        let x = l[2]
        let y = l[3]
        var sum = 0
        for m in i...x {
            for l in j...y {
                sum += b[m-1][l-1]
            }
        }
        print(sum)
    }
}

func s1551() {
    let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let k = l[1]
    var list = readLine()!.split(separator: ",").map{ Int(String($0))! }
    var rl:[Int] = []
    if k > 0 {
        for _ in 1...k {
            for i in 0...list.count-2 {
                rl.append(list[i+1]-list[i])
            }
            list = rl
            rl.removeAll()
        }
    }
    var str = ""
    for n in list {
        str += "\(n),"
    }
    str.removeLast()
    print(str)
}

func s2484() {
    let n = Int(readLine()!)!
    var maxP = 0
    for _ in 1...n {
        let list = readLine()!.split(separator: " ").map{ Int(String($0))! }.sorted()
        if list[0] == list[3] {
            let p = 50000+list[0]*5000
            if p > maxP {
                maxP = p
            }
        } else if list[0] == list[2] {
            let p = 10000+list[0]*1000
            if p > maxP {
                maxP = p
            }
        } else if list[1] == list[3] {
            let p = 10000+list[1]*1000
            if p > maxP {
                maxP = p
            }
        } else if list[0] == list[1] && list[2] == list[3] {
            let p = 2000+list[0]*500+list[2]*500
            if p > maxP {
                maxP = p
            }
        } else if list[0] == list[1] {
            let p = 1000+list[0]*100
            if p > maxP {
                maxP = p
            }
        } else if list[1] == list[2] {
            let p = 1000+list[1]*100
            if p > maxP {
                maxP = p
            }
        } else if list[2] == list[3] {
            let p = 1000+list[2]*100
            if p > maxP {
                maxP = p
            }
        } else {
            let p = list[3]*100
            if p > maxP {
                maxP = p
            }
        }

    }
    print(maxP)
}

func s1356() {
    let str = readLine()!
    var result = "YES"
    if str.count == 1 {
        result = "NO"
    } else {
        let arr = Array(str)
        var ai = 0
        var bi = arr.count-1
        var a = Int(String(arr[ai]))!
        var b = Int(String(arr[bi]))!
        while ai+1 < bi {
            if (a <= b && a > 0) || b == 0 {
                ai += 1
                a *= Int(String(arr[ai]))!
            } else {
                bi -= 1
                b *= Int(String(arr[bi]))!
            }
        }
        if a != b {
            result = "NO"
        }
    }
    print(result)
}

func s17478() {
    let n = Int(readLine()!)!
    print("어느 한 컴퓨터공학과 학생이 유명한 교수님을 찾아가 물었다.")
    jp(0)

    func jp(_ i:Int) {
        var bar = i > 0 ? String(repeating: "____", count: i) : ""
        if i == n {
            print("""
    \(bar)"재귀함수가 뭔가요?"
    \(bar)"재귀함수는 자기 자신을 호출하는 함수라네"
    \(bar)라고 답변하였지.
    """)
        } else {
            print("""
    \(bar)"재귀함수가 뭔가요?"
    \(bar)"잘 들어보게. 옛날옛날 한 산 꼭대기에 이세상 모든 지식을 통달한 선인이 있었어.
    \(bar)마을 사람들은 모두 그 선인에게 수많은 질문을 했고, 모두 지혜롭게 대답해 주었지.
    \(bar)그의 답은 대부분 옳았다고 하네. 그런데 어느 날, 그 선인에게 한 선비가 찾아와서 물었어."
    """)
            jp(i+1)
            print("\(bar)라고 답변하였지.")
        }
    }
}

func s1789() {
    let S = Int(readLine()!)!
    var i = 1
    var sum = 0
    while true {
        if S == sum {
            i -= 1
            break
        } else if S < sum {
            i -= 2
            break
        }
        sum += i
        i += 1
    }
    print(i)
}

func s1094() {
    let n = Int(readLine()!)!
    let str = String(n, radix: 2)
    let c = str.filter{ $0 == "1" }.count
    print(c)
}

func s12605() {
    let n = Int(readLine()!)!
    for i in 1...n {
        let l = readLine()!.split(separator: " ").map{ String($0) }
        var str = ""
        for j in 0..<l.count {
            str.write(" \(l[l.count-j-1])")
        }
        print("Case #\(i):\(str)")
    }
}

func s10811() {
    let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let N = l[0]
    let M = l[1]
    var dic:[Int:Int] = [:]
    for i in 1...N {
        dic[i] = i
    }
    for _ in 1...M {
        let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
        let i = l[0]
        let j = l[1]
        var temp:[Int:Int] = [:]
        for n in i...j {
            temp[j-n] = dic[n]
        }
        for n in i...j {
            dic[n] = temp[n-i]
        }
    }
    var str = ""
    for i in 1...N {
        str.write("\(dic[i] ?? 0) ")
    }
    str.removeLast()
    print(str)
}

func s10810() {
    let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let N = l[0]
    let M = l[1]
    var dic:[Int:Int] = [:]
    for _ in 1...M {
        let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
        let i = l[0]
        let j = l[1]
        let k = l[2]
        for n in i...j {
            dic[n] = k
        }
    }
    var str = ""
    for i in 1...N {
        str.write("\(dic[i] ?? 0) ")
    }
    str.removeLast()
    print(str)
}

func s9772() {
    while true {
        guard let line = readLine() else { break }
        var list = line.split(separator: " ").map{ Double(String($0))! }
        let x = list[0]
        let y = list[1]
        if x == 0 || y == 0 {
            print("AXIS")
        } else if x > 0 && y > 0 {
            print("Q1")
        } else if x > 0 {
            print("Q4")
        } else if y > 0 {
            print("Q2")
        } else {
            print("Q3")
        }
    }
}

func s1233() {
    var list = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let a = list[0]
    let b = list[1]
    let c = list[2]
    var dic:[Int:Int] = [:]
    for i in 1...a {
        for j in 1...b {
            for k in 1...c {
                let n = dic[i+j+k] ?? 0
                dic[i+j+k] = n+1
            }
        }
    }
    let sorted = dic.sorted {
        if $0.value == $1.value {
            return $0.key < $1.key
        } else {
            return $0.value > $1.value
        }
        
    }
    print(sorted[0].key)
}

func s27481() {
    readLine()
    var dic:[Int:Int] = [
        0:0,
        1:0,
        2:0,
        3:0,
        4:0,
        5:0,
        6:0,
        7:0,
        8:0,
        9:0,
    ]
    let str = readLine()!
    str.map {
        if $0 == "L" {
            for i in 0...9 {
                if dic[i] == 0 {
                    dic[i] = 1
                    break
                }
            }
        } else if $0 == "R" {
            for i in 0...9 {
                if dic[9-i] == 0 {
                    dic[9-i] = 1
                    break
                }
            }
        } else {
            let n = Int(String($0))!
            dic[n] = 0
        }
    }
    var result = ""
    for i in 0...9 {
        result.write("\(dic[i]!)")
    }
    print(result)
}

func s16088() {
    let n = Int(readLine()!)!
    for _ in 1...n {
        var list = readLine()!.split(separator: " ").map{ Int(String($0))! }
        let l = list[0]
        let r = list[1]
        let n = list[2]
        let m = list[3]
        if n == m {
            print("G")
        } else {
            let a = abs(n-m)
            if a <= l && a > r {
                print("L")
            } else if a <= r && a > l {
                print("R")
            } else {
                print("E")
            }
        }
    }
}
