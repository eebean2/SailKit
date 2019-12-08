# Whats New in Version 2.0

## SKMessage

As the app grows in code, we have finally reached the point where the messaging system has come close to launching. This means creating our own message type. SKMessage is our data wrapper for user messages back and forth, and will be used both local and server wide.

## SKColor rewrite
To clean up the color system, SLColor and SKColor are now just SKColor! There have also been other minor changes to come in future updates to improve color handling app wide and unify how color is handled when applied to both themes as well as color managet.

# SL vs SK

For better clarity when reading code, all SailSDK (SL) and SailKit (SK) names have been changed to just just SK. This is due to the increasingly harder nature to keep them seperated and lack of needed work on the actual SailSDK at the current moment. This transition will happen over the next few versions.

## SKImage

SKImage is a temporary type that will be rewritten at a later time for better image handling of assets on furture CDN servers. This will be later also updated to handle cashed objects on client sides, as well as non-image objects server sides (where we will not physically store the images on those direct servers, but only the referances).
