/* Generated by ts-generator ver. 0.0.8 */
/* tslint:disable */

import { Contract, ContractTransaction, EventFilter, Signer } from "ethers";
import { Listener, Provider } from "ethers/providers";
import { Arrayish, BigNumber, BigNumberish, Interface } from "ethers/utils";
import {
  TransactionOverrides,
  TypedEventDescription,
  TypedFunctionDescription
} from ".";

interface IERC1271WalletInterface extends Interface {
  functions: {};

  events: {};
}

export class IERC1271Wallet extends Contract {
  connect(signerOrProvider: Signer | Provider | string): IERC1271Wallet;
  attach(addressOrName: string): IERC1271Wallet;
  deployed(): Promise<IERC1271Wallet>;

  on(event: EventFilter | string, listener: Listener): IERC1271Wallet;
  once(event: EventFilter | string, listener: Listener): IERC1271Wallet;
  addListener(
    eventName: EventFilter | string,
    listener: Listener
  ): IERC1271Wallet;
  removeAllListeners(eventName: EventFilter | string): IERC1271Wallet;
  removeListener(eventName: any, listener: Listener): IERC1271Wallet;

  interface: IERC1271WalletInterface;

  functions: {
    isValidSignature(_hash: Arrayish, _signature: Arrayish): Promise<string>;
  };

  filters: {};

  estimate: {};
}



pragma solidity ^0.5.0;


interface  IERC1271Wallet {

  /**
   * @notice Verifies whether the provided signature is valid with respect to the provided data
   * @dev MUST return the correct magic value if the signature provided is valid for the provided data
   *   > The bytes4 magic value to return when signature is valid is 0x20c13b0b : bytes4(keccak256("isValidSignature(bytes,bytes)")
   *   > This function MAY modify Ethereum's state
   * @param _data       Arbitrary length data signed on the behalf of address(this)
   * @param _signature  Signature byte array associated with _data
   * @return Magic value 0x20c13b0b if the signature is valid and 0x0 otherwise
   *
   */
  function isValidSignature(
    bytes calldata _data,
    bytes calldata _signature)
    external
    view
    returns (bytes4 magicValue);

  /**
   * @notice Verifies whether the provided signature is valid with respect to the provided hash
   * @dev MUST return the correct magic value if the signature provided is valid for the provided hash
   *   > The bytes4 magic value to return when signature is valid is 0x20c13b0b : bytes4(keccak256("isValidSignature(bytes,bytes)")
   *   > This function MAY modify Ethereum's state
   * @param _hash       keccak256 hash that was signed
   * @param _signature  Signature byte array associated with _data
   * @return Magic value 0x20c13b0b if the signature is valid and 0x0 otherwise
   */
  function isValidSignature(
    bytes32 _hash,
    bytes calldata _signature)
    external
    view
    returns (bytes4 magicValue);
}
