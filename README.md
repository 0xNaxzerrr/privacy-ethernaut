Fonction run : 

vm.startBroadcast() : Commence l'émission des transactions. Cela signifie que toutes les opérations qui suivent seront diffusées sur la blockchain.
vm.load(address(level12), bytes32(uint256(5))) : Cette ligne lit directement une valeur de stockage à partir du contrat level12. L'index 5 est converti en bytes32, et vm.load retourne la valeur à cet emplacement de stockage. Dans le contexte du contrat Privacy, cela correspond à l'emplacement où la clé de déverrouillage est stockée.
level12.unlock(bytes16(myKey)) : Appelle la fonction unlock du contrat Privacy avec la clé récupérée. La clé est convertie en bytes16 car la fonction unlock attend un argument de ce type.
vm.stopBroadcast() : Termine l'émission des transactions.
